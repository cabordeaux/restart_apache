#!/bin/bash

CONFIG="$1"
COMMAND="$2"

if [ $# -ne 2 ]
then
    echo "$0 requires two paramters {virtual-host} {restart|reload}"
    exit 1
fi

# Move the current execution state to the prop

# Disable a vhost configuration
sudo a2dissite "$CONFIG"
sudo service apache2 "$COMMAND"

# Enable a vhost configuration
sudo a2ensite "$CONFIG"
sudo service apache2 "$CONFIG"

## Usage
Clone the repository or download the latest release. 

From a command line call re.sh with two arguments.
1. The vhost configuration
1. The service directive {restart|reload}
```sh
./re.sh 000* restart

