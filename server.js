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

// Page not Found Error (Error 404)
app.use(function(request, response, next) {
    response.status(404).sendFile(__dirname + '/page404.html');
});

// Internal Server Error (Error 500)
app.use((error, request, response, next) => {
    response.status(500).sendFile(__dirname + '/page500.html');
});

app.listen(8000);

console.log("Server Listening ...");