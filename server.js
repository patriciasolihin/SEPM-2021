const express = require('express');
const app = express();

// server can now use static files (css, images etc.)
app.use(express.static('public'))

// load home page file with directory http:localhost(8000)/
app.get('/', function (request, response) {
    response.sendFile(__dirname + '/home.html');
});

// load map mode page file with directory http:localhost(8000)/mapMode.html
app.get('/mapMode.html', function (request, response) {
    response.sendFile(__dirname + '/mapMode.html');
});

app.listen(8000);

console.log("Server Listening ...");