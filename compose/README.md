# docker compose

A docker compose file for my docker compose environments.

## Usage 

### Starting

```bash
docker compose pull  # pulls the latest image.
docker compose up -d  # starts container in detached mode.
```

### Stopping

```bash
docker compose down  # stops the container.
docker compose down --volumes  # stops the container and removes the data volumes.
```

### Updating

```bash
docker compose pull  # pulls the latest image.
docker compose up -d  # restarts the containers with the newer images.
docker compose up -d --no-deps  # restarts the containers with the newer images.
docker system prune -a  # deletes any unused images.
```

### Uninstall

```bash
docker compose down -v  # stops the container and removes the data volumes.
docker system prune -a  # deletes any unused container images.
```

### Using NFS Shares for Volumes

Sections such as the below 

```
volumes:
  data:
    driver: local
```
Can be replaced by the below if you want to host the volume on a NFS server.

```
volumes:
  data:
    driver_opts:
      type: nfs
      o: addr=NFS_SERVER,nolock,soft,rw
      device: :FULL_NFS_SHARE_PATH
```

## Author Information

This project was created in 2026 by Graham Lillico.
