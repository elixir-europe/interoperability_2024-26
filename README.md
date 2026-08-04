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
