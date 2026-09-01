#!/usr/bin/env python3
"""Regenerate _data/library-interop-stories.json from the source spreadsheet.

Standalone, local replacement for the Google Apps Script exporter
(appscript.js/appscript.html) that used to be run from the spreadsheet's
Extensions > Apps Script menu. This reads each sheet tab straight from
Google's public CSV export endpoint (Google Visualization API), so no
Google API credentials/OAuth are needed -- the spreadsheet just needs to be
shared as "Anyone with the link can view".

Source spreadsheet:
https://docs.google.com/spreadsheets/d/1AqXKfmGw_iicBEDJFRfRbXDkArqYAmbRVtv4_0HbJ4k/edit

Usage:
    python3 scripts/generate_library_interop_stories.py
"""
import csv
import io
import json
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path

SPREADSHEET_ID = "1AqXKfmGw_iicBEDJFRfRbXDkArqYAmbRVtv4_0HbJ4k"
OUTPUT_PATH = Path(__file__).resolve().parent.parent / "_data" / "library-interop-stories.json"

# Each entry mirrors one getSheetData(...) call in appscript.js:
# key -> (sheet name, zero-based column indices to keep, output headers)
#
# Mapping sheets read columns A:B plus E (skipping C/D), matching the
# original script's two-range getRangeList(["A2:B{lastRow}", "E2:E{lastRow}"]).
SHEET_SPECS = {
    "stories_data": ("Stories", [0, 1, 2, 3, 4], ["id", "title", "community", "description", "url"]),
    "stories_ft_mapping": ("Stories-FT_mapping", [0, 1, 4], ["id", "cff_id", "relevance"]),
    "stories_process_mapping": ("Stories-Process_mapping", [0, 1, 4], ["id", "cff_id", "relevance"]),
    "stories_dsm_mapping": ("Stories-DSM_mapping", [0, 1, 4], ["id", "cff_id", "relevance"]),

    "fm_data": ("FAIR Metroline", [0, 1, 2, 3], ["id", "title", "url", "description"]),
    "ft_fm_mapping": ("FT-FM_mapping", [0, 1, 4], ["cff_id", "id", "relevance"]),
    "process_fm_mapping": ("Proc-FM_mapping", [0, 1, 4], ["cff_id", "id", "relevance"]),

    "fc_data": ("FAIR Cookbook", [0, 1, 2], ["id", "title", "url"]),
    "ft_fc_mapping": ("FT-FC_mapping", [0, 1, 4], ["cff_id", "id", "relevance"]),
    "process_fc_mapping": ("Proc-FC_mapping", [0, 1, 4], ["cff_id", "id", "relevance"]),

    "rdmkit_data": ("RDMkit", [0, 1, 2, 3, 4], ["id", "rdmkitName", "title", "description", "url"]),
    "ft_rdmkit_mapping": ("FT-RDMkit_mapping", [0, 1, 4], ["cff_id", "id", "relevance"]),
    "process_rdmkit_mapping": ("Proc-RDMkit_mapping", [0, 1, 4], ["cff_id", "id", "relevance"]),

    "ft_data": (
        "FAIRification Template",
        [0, 1, 2, 3, 4, 5],
        ["ftID", "ftStepLevel", "ftSubStepLevel", "ftStep", "ftSubstep", "ftDescription"],
    ),

    "dsm_data": (
        "DSM",
        [0, 1, 2, 3, 4, 5],
        ["categoryID", "categoryLevel", "categoryName", "categoryDescription", "categoryLink", "categoryColor"],
    ),
    "dsm_ft_mapping": ("DSM-FT_mapping", [0, 1], ["categoryID", "ftID"]),

    "process_data": ("Process", [0, 1, 2, 3], ["processID", "processLevel", "processName", "processDescription"]),
}


def fetch_sheet_rows(sheet_name):
    url = (
        f"https://docs.google.com/spreadsheets/d/{SPREADSHEET_ID}/gviz/tq"
        f"?tqx=out:csv&sheet={urllib.parse.quote(sheet_name)}"
    )
    try:
        with urllib.request.urlopen(url) as response:
            raw = response.read().decode("utf-8")
    except urllib.error.HTTPError as e:
        raise RuntimeError(
            f"Could not fetch sheet '{sheet_name}' ({e}). "
            "Make sure the spreadsheet is shared as 'Anyone with the link can view'."
        ) from e
    return list(csv.reader(io.StringIO(raw)))


def get_sheet_data(sheet_name, column_indices, headers):
    rows = fetch_sheet_rows(sheet_name)
    data_rows = rows[1:]  # drop header row

    # Mirror getLastNonEmptyRowIndex(): the original script only ever checks
    # column A, then trims trailing rows once that column stays empty.
    last_index = 0
    for i, row in enumerate(data_rows):
        if row and row[0].strip() != "":
            last_index = i + 1
    data_rows = data_rows[:last_index]

    result = []
    for row in data_rows:
        obj = {}
        for header, col in zip(headers, column_indices):
            obj[header] = row[col] if col < len(row) else ""
        result.append(obj)
    return result


def main():
    data = {key: get_sheet_data(*spec) for key, spec in SHEET_SPECS.items()}

    final_object = {
        "elixirstories": {
            "data": data["stories_data"],
            "mappings": data["stories_ft_mapping"] + data["stories_process_mapping"] + data["stories_dsm_mapping"],
        },
        "fairmetroline": {
            "data": data["fm_data"],
            "mappings": data["ft_fm_mapping"] + data["process_fm_mapping"],
        },
        "faircookbook": {
            "data": data["fc_data"],
            "mappings": data["process_fc_mapping"] + data["ft_fc_mapping"],
        },
        "rdmkit": {
            "data": data["rdmkit_data"],
            "mappings": data["process_rdmkit_mapping"] + data["ft_rdmkit_mapping"],
        },
        "ft_data": data["ft_data"],
        "dsm_data": data["dsm_data"],
        "dsm_ft_mapping": data["dsm_ft_mapping"],
        "process_data": data["process_data"],
    }

    OUTPUT_PATH.write_text(json.dumps(final_object, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(f"Wrote {OUTPUT_PATH}")


if __name__ == "__main__":
    main()
