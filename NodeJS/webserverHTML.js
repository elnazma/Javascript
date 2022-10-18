var http = require('http');
http.createServer(function(req, res) {
    res.writeHead(200, { 'Content-Type' : 'text/html' });
    res.write(
        'Kita <h1>Belajar</h1>! <p>NodeJS</p> <b>Ya teman-teman</b>'
    );
    res.end();
}).listen(8000);

console.log("server running on http://localhost:8000");