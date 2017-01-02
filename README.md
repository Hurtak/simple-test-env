# Simple test env

- super simple shell script to quickly create enviroment with desired os/language with shared folder

## Usage

- `./start.sh <image> <run command>`
    - image defaults to `debian`
    - command defaults to image default command
- workdir inside images is set to `/usr/src/shared`
- in this directory there will be automatically created `shared` directory which will be mounted to the image workdir

### Example usage

- `./start.sh` run default image debian:8
- `./start.sh ubuntu:16.04` run image with ubuntu:16.04
- `./start.sh node:6` run image with node:6, images default run command starts node REPL
- `./start.sh node:6 /bin/bash` run image with node:6 and override run command to /bin/bash
