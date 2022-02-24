from dagster import job, op

@op
def hello():
    print("Hello World!")

@job
def hello_world_job():
    hello()
