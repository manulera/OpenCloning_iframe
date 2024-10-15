cd ShareYourCloning_backend
#  --root-path="syc"
SERVE_FRONTEND=1 ALLOWED_ORIGINS=http://localhost:3000 poetry run uvicorn main:app --root-path="/syc"