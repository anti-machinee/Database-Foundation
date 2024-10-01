# activate a token
influx auth active -i <auth-id>

# To get the current status of a token
influx auth find --json

# disable a token
influx auth inactive -i <auth-id>
