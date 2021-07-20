const express = require('express');
const app = express();
const promBundle = require("express-prom-bundle");

const metricsMiddleware = promBundle({includeMethod: true, includePath: true, includeStatusCode: true, includeUp: true});

app.use(metricsMiddleware)

// hello world rest endpoint 
app.get("/hello", (req,res) => res.json({hello:"world"}))

app.listen(8080, function () {    
    console.log('Listening at http://localhost:8080');  
  });