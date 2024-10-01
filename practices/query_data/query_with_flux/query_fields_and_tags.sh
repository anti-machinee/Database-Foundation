from(bucket: "example-bucket")
    |> range(start: -1h)
    |> filter(fn: (r) => r._measurement == "example-measurement-name" and r.mytagname == "example-tag-value")
    |> filter(fn: (r) => r._field == "example-field-name")
