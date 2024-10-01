# Create an All Access token
influx auth create \
  --org ${ORG} \
  --all-access

# Create Operator token
influx auth create \
    --org ${ORG} \
    --operator

# Create a token with specified read permissions
influx auth create \
  --org ${ORG} \
  --read-bucket ${BUCKET} \
  --read-bucket ${BUCKET} \
  --read-dashboards \
  --read-tasks \
  --read-telegrafs \
  --read-user

# Create a token scoped to a user and with specified read and write permissions
influx auth create       \
  --org ATSYS        \
  --user dev2       \
  --read-authorizations  \
  --write-authorizations \
  --read-buckets         \
  --write-buckets        \
  --read-dashboards      \
  --write-dashboards     \
  --read-tasks           \
  --write-tasks          \
  --read-telegrafs       \
  --write-telegrafs      \
  --read-users           \
  --write-users
  
# Create API token
influx auth create \
  --all-access \
  --host http://localhost:8086 \
  --org ${ORG} \
  --token ${OPERATOR_TOKEN}
