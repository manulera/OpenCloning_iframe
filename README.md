# SYC iframe

This project shows how to embed ShareYourCloning in an iframe.

## Setup

Gets backend and frontend from each repo, builds frontend and install backend dependencies.

```bash
bash setup.sh
```

## Running

```bash
# Start nginx (in a separate terminal), uses sudo and config in nginx.config
bash serve_nginx.sh

# Start backend (in a separate terminal)
bash serve_syc.sh
```

Then go to `http://localhost:3000` in your browser and it should work.