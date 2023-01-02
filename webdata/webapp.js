const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send(`
  <html>
  <head>
  <title> DevSecOps Tool Chain Project (RP1) </title>
  </head>

    <body style="background-color:LightGray;">  
    <h1> DevSecOps Tool Chain Project (RP1) </h1>
      <h3 style="background-color:Yellow;">This project was done by Samson, Ayomide, Rolly and Emeka.</h3>

      <p> Resources used are located at: </p>
      <p> Jenkins Master: 10.1.1.41 </p>
      <p> Webserver: 10.1.1.40 </p>
      <p> Domain Contoller: 10.1.1.50 </p>
      <p> VMware ESXi server: 10.1.1.210 </p>
      
    </body>
  </html>
  `);
});

app.listen(9000, () => {
  console.log('Server listening on port 9000');
});