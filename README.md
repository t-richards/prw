# prw

An example configuration for running an Enshrouded resource server with automatic save file reset.

## Requirements

- Docker with `docker compose`

## Usage

1. Start the enshrouded container to create the `game` folder where the game will be installed.

```sh-session
$ docker compose up -d enshrouded
```

2. Place your backup save files in the `backup` directory.

For example,

```sh-session
$ mkdir -p backup
$ cd backup
$ unzip ../PRW v5.1.23_07Mar25_slot 10.zip
$ tree backup
backup
├── 3ad85aea
├── 3ad85aea-1
├── 3ad85aea-2
├── 3ad85aea-3
...
```

3. Start the maintenance service to automatically restart the server and reset the save files.

See the `Dockerfile` and the `crontabs/root` file for changing the schedule.

```sh-session
$ docker compose up -d maintenance
```
