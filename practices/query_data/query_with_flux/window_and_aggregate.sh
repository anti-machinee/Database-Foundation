dataSet = from(bucket: "example-bucket")
    |> range(start: -5m)
    |> filter(fn: (r) => r._measurement == "mem" and r._field == "used_percent")
    |> drop(columns: ["host"])

dataSet
    |> window(every: 1m)

dataSet
    |> window(every: 1m)
    |> mean()

dataSet
    |> window(every: 1m)
    |> mean()
    |> duplicate(column: "_stop", as: "_time")

dataSet
    |> window(every: 1m)
    |> mean()
    |> duplicate(column: "_stop", as: "_time")
    |> window(every: inf)

dataSet
    |> aggregateWindow(every: 1m, fn: mean)