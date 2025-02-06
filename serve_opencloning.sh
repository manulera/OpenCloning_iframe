cd ShareYourCloning_backend
#  --root-path="opencloning"
SERVE_FRONTEND=1 ALLOWED_ORIGINS=http://localhost:3000 poetry run uvicorn opencloning.main:app --root-path="/opencloning"