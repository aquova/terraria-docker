# Terraria Docker

A Docker image for hosting Terraria servers.

Currently on Terraria version 1.4.4.6.

## Usage

Build the Docker image by running:

`docker build -t terraria .`

If you have Docker Compose installed, you can run the container via:

`docker compose up -d`

This will start the server on port 7777, placing created worlds in a `worlds` directory.

You will need to have a configuration file titled `config.ini` in this directory when you build, filled out as shown [here](https://terraria.fandom.com/wiki/Server#Server_config_file).
