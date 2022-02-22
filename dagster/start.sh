#!/bin/bash

dagster-daemon run &
dagit -h 0.0.0.0 -p 5000