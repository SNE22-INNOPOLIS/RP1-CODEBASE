const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send(`
    <html>
      <body style="background-color: yellow">
        <h1>DevSecOps tool chain project by Samson, Ayomide, Rolly and Emeka is successful!!!</h1>
      </body>
    </html>
  `);
});

app.listen(8080, () => {
  console.log('Server listening on port 8080');
});