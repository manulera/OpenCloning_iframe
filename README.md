# SYC iframe

This project shows how to embed ShareYourCloning in an iframe.

## Requirements

- nginx
- poetry
- yarn

## Setup

Gets backend and frontend from each repo, builds frontend and install backend dependencies.

```bash
bash setup.sh
```

## Config

You need to change the value of `root` in the `nginx.config` file to the project directory path.

## Running

```bash
# Start nginx (in a separate terminal), uses sudo and config in nginx.config
bash serve_nginx.sh

# Start backend (in a separate terminal)
bash serve_syc.sh
```

Then go to `http://localhost:3000` in your browser and it should work.