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
        "description": "Alert for Application Insights health check availability.",
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
              "metricNamespace": "Microsoft.Insights/components",
              "operator": "LessThan",
              "threshold": 99,
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
    },
    {
      "type": "Microsoft.Insights/metricAlerts",
      "apiVersion": "2018-03-01",
      "name": "AppInsightsResponseTimeAlert",
      "location": "global",
      "properties": {
        "description": "Alert for Application Insights response time.",
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
              "name": "ResponseTime",
              "metricName": "ResponseTime",
              "metricNamespace": "Microsoft.Insights/components",
              "operator": "GreaterThan",
              "threshold": 120,
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
