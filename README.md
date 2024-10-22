# SYC iframe

This project shows how to embed ShareYourCloning in an iframe.

## Running with Docker

The `docker-compose.yaml` contains a dummy nginx container that serves an index file (`index.html`) with an iframe to SYC, and proxies `/syc` requests to the backend container.

Note the env variables set in the `docker-compose.yaml` file.

- `ALLOWED_ORIGINS`: ensures that requests from the frontend are allowed by the backend.
- `ROOT_PATH`: specifies the subpath for the backend.

Also, note the `config.json` file mounted via volume. This could be moved to the env variables in the future.

## Running without Docker

### Requirements

- nginx
- poetry
- yarn

### Setup

Gets backend and frontend from each repo, builds frontend and install backend dependencies.

```bash
bash setup.sh
```

### Config

You need to change the value of `root` in the `nginx.config` file to the project directory path.

### Running

```bash
# Start nginx (in a separate terminal), uses sudo and config in nginx.config
bash serve_nginx.sh

# Start backend (in a separate terminal)
bash serve_syc.sh
```

Then go to `http://localhost:3000` in your browser and it should work.