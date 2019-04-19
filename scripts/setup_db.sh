#!/bin/bash

PGUSER=postgres PGDATABASE=postgres PG_PASS=${PG_PASS} PG_PASS_RO=${PG_PASS} PG_PASS_TEAM=knative ./devel/init_database.sh
./structure
#TODO investigate why gha_logs gets created in the wrong database
pg_dump -t gha_logs knative | psql devstats
