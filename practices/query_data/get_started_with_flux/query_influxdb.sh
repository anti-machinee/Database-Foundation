# define data source
from(bucket: "example-bucket")

# specify a time range
## relative
from(bucket:"example-bucket")
    |> range(start: -1h)

from(bucket:"example-bucket")
    |> range(start: -1h, stop: -10m)

## absolute
from(bucket:"example-bucket")
    |> range(start: 2021-01-01T00:00:00Z, stop: 2021-01-01T12:00:00Z)

# filter data
## pattern
(r) => (r.recordProperty comparisonOperator comparisonExpression)
## 1 filter
(r) => (r._measurement == "cpu")
## multi filters
(r) => (r._measurement == "cpu" and r._field != "usage_system")
## sample
from(bucket: "example-bucket")
    |> range(start: -15m)
    |> filter(fn: (r) => r._measurement == "cpu" and r._field == "usage_system" and r.cpu == "cpu-total")

# yield queried data
from(bucket: "example-bucket")
    |> range(start: -15m)
    |> filter(fn: (r) => r._measurement == "cpu" and r._field == "usage_system" and r.cpu == "cpu-total")
    |> yield()
