from(bucket: "example-bucket")
    |> range(start: -12h)
    |> filter(fn: (r) => r._measurement == "system" and r._field == "uptime")
    |> sort(columns: ["region", "host", "_value"])

from(bucket:"example-bucket")
    |> range(start:-1h)
    |> limit(n:10)

from(bucket: "example-bucket")
    |> range(start: -12h)
    |> filter(fn: (r) => r._measurement == "system" and r._field == "uptime")
    |> sort(columns: ["region", "host", "_value"])
    |> limit(n: 10)
