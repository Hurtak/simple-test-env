# Simple test env

- super simple shell script which quickly creates an environment with
    - desired os/language
    - shared folder

## Prerequisites

- [Docker](https://www.docker.com/) is required

### Operating system compatibility

- Works on Linux
- Should work on MacOS (if somebody can confirm/deny, please create issue)
- Maybe will work on Windows 10 (if somebody can confirm/deny, please create issue)

## Usage

- `./start.sh <image> <run command>`
    - image defaults to `debian`
    - command defaults to image's default command
- workdir inside the image is set to `/usr/src/shared`
- in this directory, there will be automatically created `shared` directory, which will be mounted to the image's workdir

### Example usage

- `./start.sh` run default image debian:8
- `./start.sh ubuntu:16.04` run image with ubuntu:16.04
- `./start.sh python:3` run image with python:3, uses image's default run command which starts python REPL
- `./start.sh python:3 /bin/bash` run image with python:3 and override run command to /bin/bash

### Demo

#### Hello world from 3 operating systems under minute

![hello world example from across operating systems](gif/hello.gif)

#### Test quickly multiple languages or language versions

![multiple languages](gif/languages.gif)

#### Run random scripts from the internet more safely

![run dangerous scripts safely](gif/dangerous.gif)
