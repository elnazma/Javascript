var http = require ('http');    //kode dimulai dengan membuat server HTTP

var server = http.createServer(function(req, res) {
    //kemudian membuat fungsi  yang akan dipanggil ketika server menerima permintaan dari klien
   
    res.end("Hi, selamat datang di nodejs");
    //Dalam hal ini, untuk hanya mencetak console.log("server running on http://localhost:8000")
});

server.listen(8000);    //pada port 8000

//dimana server nodejs sederhana yang akan merespons dengan ("Hi, selamat datang di nodejs");
//untuk setiap permintaan yang masuk

console.log("server running on http://localhost:8000");

//tujuan dari kode ini adalah agar server berjalan di "server running on http://localhost:8000"