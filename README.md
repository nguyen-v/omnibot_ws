## Cloning
```bash
git clone git@github.com:nguyen-v/omnibot_ws.git --recursive
```

## Building the docker images
```bash
./scripts/build_all.sh
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

