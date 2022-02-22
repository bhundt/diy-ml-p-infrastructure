#!/bin/bash
mlflow server --backend-store-uri sqlite:///backend/mlflow.sqlite --default-artifact-root artifacts/