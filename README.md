# azure-iot-data-stream-analytics

Analyzing IoT Data Using Azure Stream Analytics

![Environment Diagram](https://user-images.githubusercontent.com/3911650/37886257-42b3f9e2-3077-11e8-937a-5c2e46ad0f4d.png)

## Getting Started

Using Azure PowerShell, do the following to create a resource group for the lab:

```ps1
.\startup.ps1
```

## Following Along

1. Create a Stream Analytics job.
1. Enter in the following query:

    ```sql
    SELECT   system.timestamp AS endtime,
             dspl             AS sensorname,
             Count(*)         AS numreadings
             INTO     output
    FROM     inputstream TIMESTAMP by time
    GROUP BY tumblingwindow(minute, 10),
             dspl
    ```

1. Upload the data in `data/iot-data.json` as the sample input.
1. Test the query.

## Tearing Down

When finished, remove the Azure resources with:

```ps1
.\teardown.ps1
```

## Acknowledgements

Thank you to Microsoft for providing the [IoT sample data](https://github.com/Azure/azure-stream-analytics/tree/master/Samples/GettingStarted).