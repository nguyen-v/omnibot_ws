## Cloning
```bash
git clone git@github.com:nguyen-v/omnibot_ws.git --recursive
```

## Building the docker images
```bash
./scripts/build_all.sh
```

## Adding a delay to the start of the docker service

This is needed as the CAN interface takes some time to start.
```bash
./scripts/add_delay_docker_start.sh
```

To remove the override file, just run the following:
```bash
./scripts/remove_delay_docker_start.sh
```

## Running
```bash
docker compose up -d
```

## Stopping
```bash
docker compose down
```

> [!NOTE]
> The containers are set to start at boot.

