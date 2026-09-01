[![Jekyll site CI](https://github.com/elixir-europe/interoperability_2024-26/actions/workflows/jekyll.yml/badge.svg?branch=main)](https://github.com/elixir-europe/interoperability_2024-26/actions/workflows/jekyll.yml) [![theme badge](https://img.shields.io/badge/Jekyll%20theme-ETT-blue?logo=jekyll&color=0d6efd)](https://github.com/ELIXIR-Belgium/elixir-toolkit-theme)

# ELIXIR’s Interoperability Platform 2024–26 activities

Repository for content produced and developed during ELIXIR’s Interoperability Platform 2024–26 activities.

## Testing the site locally

With [Docker Compose](https://docs.docker.com/compose/) installed:

```bash
docker compose up
```

Then open http://localhost:4000. The site rebuilds automatically as you edit files.

Stop it with:

```bash
docker compose down -v
```

`-v` also removes the `gems`/`site` cache volumes, so the next `docker compose up` reinstalls everything from scratch.

If your checkout is a git worktree rather than the main clone, run `./docker-worktree-setup.sh`
once first.

`docker compose up` (`docker-compose.yml`) runs `jekyll serve` (dev server, no `--baseurl`,
`JEKYLL_ENV=development`), which is *not* what the GitHub Actions workflow builds and deploys.
To check a page the way it will actually render on GitHub Pages, build and serve it the same way
CI does, using the separate production compose file:

```bash
docker compose -f docker-compose.prod.yml up
```

Then open http://localhost:4001/interoperability_2024-26/ (note the path — GitHub Pages serves
this site under `/interoperability_2024-26/`, not `/`). This is a one-shot build, not a
live-reloading dev server; re-run the command after making changes.

If your checkout is a git worktree, `./docker-worktree-setup.sh` also generates a prod override
file, which must be passed explicitly (unlike the dev override, it isn't merged automatically):

```bash
docker compose -f docker-compose.prod.yml -f docker-compose.prod.override.yml up
```

## Regenerating `_data/library-interop-stories.json`

`_data/library-interop-stories.json` (interoperability stories, FAIR Metroline, FAIR
Cookbook, RDMkit, FAIRification Template, DSM and Process data, plus their cross-mappings)
is sourced from a Google Sheets document. It used to be exported by hand via an Apps Script bound to that document; `scripts/generate_library_interop_stories.py`
does the same export locally instead, with no dependencies beyond the Python 3 standard library.

Run it from the repo root:

```bash
python3 scripts/generate_library_interop_stories.py SOURCE_URL
```

It reads each relevant tab straight from Google's public CSV export endpoint (so the
document must stay shared as "Anyone with the link can view"), rebuilds the same JSON
structure the old Apps Script produced, and overwrites `_data/library-interop-stories.json`.
Review the resulting diff before committing.
