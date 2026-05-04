# Create directories that store your stacks and stores Dockge's stack
```shell
mkdir -p /opt/stacks /opt/dockge
cd /opt/dockge
```

# Copy in the compose.yaml file from this repo.
```shell
nano compose.yml
```

# Start the server
```shell
docker compose up -d
```

## Information
- Default Stacks Directory: `/opt/stacks`
- Default Port: 5001
