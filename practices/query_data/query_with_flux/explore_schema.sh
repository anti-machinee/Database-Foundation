# list measurements
import "influxdata/influxdb/schema"
schema.measurements(bucket: "example-bucket")

# list field keys
import "influxdata/influxdb/schema"
schema.fieldKeys(bucket: "example-bucket")

# list fields in a measurement
import "influxdata/influxdb/schema"
schema.measurementFieldKeys(
    bucket: "example-bucket",
    measurement: "example-measurement",
)

# list tag keys
import "influxdata/influxdb/schema"
schema.tagKeys(bucket: "example-bucket")

# list tag keys in a measurement
import "influxdata/influxdb/schema"
schema.measurementTagKeys(
    bucket: "example-bucket",
    measurement: "example-measurement",
)

# list tag values
import "influxdata/influxdb/schema"
schema.tagValues(bucket: "example-bucket", tag: "example-tag")

# list tag values in a measurement
import "influxdata/influxdb/schema"
schema.measurementTagValues(
    bucket: "example-bucket",
    tag: "example-tag",
    measurement: "example-measurement",
)