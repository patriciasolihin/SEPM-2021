'use strict';

// use http and fileSystem modules
let http = require('http');
let fs = require('fs');

// Server responses/callbacks 
function requestCallback (request, response) {
    fs.readFile('mapMode.html', function (error, data) {
        response.writeHead(200, { 'Content-Type': 'text/html' });
        response.write(data);
        return response.end();
    })
};

// create the server and run the callback
let server = http.createServer(requestCallback);
server.listen(8000);

// show the system is running for devs
console.log("Server is listening...");


