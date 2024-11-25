{
  "$schema": "https://schema.management.azure.com/schemas/2019-08-01/managementGroupDeploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "resources": [
    {
      "type": "Microsoft.Insights/metricAlerts",
      "apiVersion": "2018-03-01",
      "name": "AppInsightsHealthCheckAlert",
      "location": "global",
      "properties": {
        "description": "Alert for Application Insights health check and response time issues.",
        "enabled": true,
        "scopes": [
          "[parameters('applicationInsightsResourceId')]"
        ],
        "evaluationFrequency": "PT1M",
        "windowSize": "PT5M",
        "criteria": {
          "@odata.type": "Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria",
          "allOf": [
            {
              "name": "HealthCheckAvailability",
              "metricName": "Availability",
              "metricNamespace": "Microsoft.Insights/components",  // Correct namespace for App Insights
              "operator": "LessThan",
              "threshold": 99,  // Availability threshold (less than 99% triggers the alert)
              "timeAggregation": "Average"
            },
            {
              "name": "ResponseTime",
              "metricName": "ResponseTime",
              "metricNamespace": "Microsoft.Insights/components",  // Correct namespace for App Insights
              "operator": "GreaterThan",
              "threshold": 120,  // Threshold for response time (greater than 120 ms triggers the alert)
              "timeAggregation": "Average"
            }
          ]
        },
        "actions": [
          {
            "actionGroupId": "[parameters('actionGroupId')]"
          }
        ]
      }
    }
  ]
}
