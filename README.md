# Micsoroft SQL Server

## Prerequisites

To use this repository make sure you have the following installed:

1. [Docker](https://docs.docker.com/get-docker/)
2. [make](https://formulae.brew.sh/formula/make)

**Note:** Make sure you are using the latest version of make (which is installed as gmake). Instructions are available in the link above on the Homebrew Formulae page.

You can see a list of available commands by executing:

```sh
make help
```

## Troubleshooting

If you get an error starting the Docker container on an M1 mac like so:

```
docker mssql mac m1 sqlservr: Invalid mapping of address 0x4003917000 in reserved address space below 0x400000000000
```

Then do the following:

1. Upgrade Docker to latest
2. Docker Settings > General: [X] Use virtualization framework and
3. Docker Settings > Features in Development: [X] Use Rosetta...
