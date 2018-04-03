# restart apache

## Usage

Clone the repository or download the latest release. 

From a command line call re.sh with two arguments.
1. The vhost configuration
1. The service directive {restart|reload}
```sh
./re.sh 000* restart
```if [ "$COMMAND" == "reload" ] || [ "$COMMAND" == "restart" ]
then
   # Move the current execution state to the proper directory
    cd /etc/apache2/sites-available

    # Disable a vhost configuration
    sudo a2dissite "$CONFIG"
    sudo service apache2 "$COMMAND"

    # Enable a vhost configuration
    sudo a2ensite "$CONFIG"
    sudo service apache2 "$COMMAND"
else
    echo "ERROR: $COMMAND is an invalid service command {restart|reload}"
    exit 1
fi
