# gickup

A docker compose file for my dozzle environment.

## Usage 

### Starting

```bash
docker compose pull  # pulls the latest image
```

To create the users.yml file run the following command, this create a user called `admin` with a password set to `password`.

```bash
docker run -it --rm amir20/dozzle:v8.13.7 generate admin --password password --name "Admin" > users.yml
```

```bash
docker compose up -d  # starts container in detached mode
```

### Stopping

```bash
docker compose down  # stops the container
```

### Updating

```bash
docker compose pull     # pulls the latest image
docker compose up -d    # restarts the containers with the newer images
docker system prune -a  # deletes any unused images
```

### Uninstall

```bash
docker compose down -v  # stops the container and deletes the data volumes
docker system prune -a  # deletes any unused container images
```

## Author Information

This project was created in 2025 by Graham Lillico.
