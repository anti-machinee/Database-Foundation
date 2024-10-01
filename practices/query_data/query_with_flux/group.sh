dataSet = from(bucket: "example-bucket")
    |> range(start: -2m)
    |> filter(fn: (r) => r._field == "usage_system" and r.cpu =~ /cpu[0-9*]/)
    |> drop(columns: ["host"])

dataSet
    |> group(columns: ["cpu"])

dataSet
    |> group(columns: ["_time"])

dataSet
    |> group(columns: ["cpu", "_time"])