const express = require('express');
const app = express();
const promBundle = require("express-prom-bundle");

const metricsMiddleware = promBundle({
    includeMethod: true, 
    includePath: true, 
    includeStatusCode: true, 
    includeUp: true,
    customLabels: {project_name: 'hello_world', project_type: 'test_metrics_labels', time: null},
    transformLabels: labels => Object.assign(labels, {time: new Date().getTime()}),
    promClient: {
        collectDefaultMetrics: {
        }
      }
});

app.use(metricsMiddleware)

// hello world rest endpoint 
app.get("/hello", (req,res) => res.json({hello:"world"}))

app.listen(8080, function () {    
    console.log('Listening at http://localhost:8080/hello \nMetrics at http://localhost:8080/metrics');  
  });