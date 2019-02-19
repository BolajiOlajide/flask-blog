#!/bin/bash

set -eo pipefail

# create database
function create_db {
python << END
import sys
from app import db
db.create_all()
sys.exit(0)
END
}

function drop_db {
python << END
import sys
from app import db
db.drop_all()
sys.exit(0)
END
}

function export_env {
    export FLASK_APP=main.py
    export FLASK_DEBUG=1
}


if [[ "$1" == "create_db" ]]; then
    create_db
elif [[ "$1" == "export_env" ]]
then
    export_env
elif [[ "$1" == "drop_db" ]]
then
    drop_db
else
    echo 'Invalid command entered!'
fi

exit 0
