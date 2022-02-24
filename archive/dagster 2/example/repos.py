from dagster import repository

from hello_world_job import hello_world_job

@repository
def get_dev_repos():
    return [hello_world_job]
