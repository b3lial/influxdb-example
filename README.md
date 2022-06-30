# influxdb-example

Collection of scripts to:

* spawn an influxdb via docker
* read token for REST access
* write random data into the database

## Start the database

If you run the scripts for the first time, invoke `./setup-db.sh`. In the script, adjust the following variables:

* DOCKER_INFLUXDB_INIT_USERNAME
* DOCKER_INFLUXDB_INIT_PASSWORD
* DOCKER_INFLUXDB_INIT_ORG
* DOCKER_INFLUXDB_INIT_BUCKET

Afterwards, the container can be started via `run-db.sh`

## Get API Token

Run `get-token.sh` to fetch your users API token. You need it in the next step when writing data into the database.

## Write Data

This script emulates a temperature/humidity sensor. Run `write-test-data.sh` to write a tuple of

* random temperature
* random humidity 
 
values into the influxdb.

## Read Data

To see your data, connect to __http://localhost:8086__ with your browser. Enter the username and password you configured earlier.
Finally, open the __dataexplorer__ and submit a query.
