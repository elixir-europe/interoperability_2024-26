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
docker compose down
```

If your checkout is a git worktree rather than the main clone, run `./docker-worktree-setup.sh`
once first.

`docker compose up` runs `jekyll serve` (dev server, no `--baseurl`, `JEKYLL_ENV=development`),
which is *not* what the GitHub Actions workflow builds and deploys. To check a page the way it
will actually render on GitHub Pages, build and serve it the same way CI does:

```bash
docker compose --profile prod up jekyll-prod
```

Then open http://localhost:4001/interoperability_2024-26/ (note the path — GitHub Pages serves
this site under `/interoperability_2024-26/`, not `/`). This is a one-shot build, not a
live-reloading dev server; re-run the command after making changes.
