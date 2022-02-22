# Infrastructure (as Code) for DIY-ML-P
Everything needed to setup new version of DIY-ML-P.

## Requirements
- Python
- git
- dvc
- docker
- docker-compose

## Folder Structure / Environment Variables

Prod environment assumes: 
- `~/mlflow/backend/mlflow.sqlite`
- `~/mlflow/artifacts/`
- `~/dagster``

Local environment assumes:
- `../../mlflow/backend/mlflow.sqlite`
- `../../mlflow/artifacts/`
- `../../dagster``

Change as needed.

## Usage
- dagster: exposed on part 8000
- mlflow: exposed on port 8001

Start:
```bash
docker-compose -f docker-compose.<ENV>.yaml up -d
```

Stop:
```bash
docker-compose -f docker-compose.<ENV>.yaml down
```