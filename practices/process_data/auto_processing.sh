option task = {
    name: "Example task"
    every: 1d,
}

from(bucket: "get-started-downsampled")
    |> range(start: -task.every)
    |> filter(fn: (r) => r._measurement == "home")
    |> aggregateWindow(every: 2h, fn: mean)
