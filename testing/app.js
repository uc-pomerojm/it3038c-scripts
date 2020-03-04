var http = require("http"); 

var fs = require("fs");

var os = require("os");

var ip = require("ip");





var server = http.createServer(function(req, res){

    if(req.url === "/") {

        fs.readFile("./public/index.html","UTF-8",function(err, body){

            res.writeHead(200, {"Content-Type":"text/html"}); 

            res.end(body);

        });

    }



    else if(req.url.match("/sysinfo")){

        myHostName=os.hostname();

        html=`

        <!DOCTYPE html>

        <html>

         <head> 

         <title> System Info </title>

         </head>

         <body>

         <p>Hostname: ${myHostName}</p>

         <p>IP: ${ip.address()}</p>

         <p>Server Uptime: </p>

         <p>Total Memory: ${memoryUsage()}</p>

         <p>Free Memory: ${process.memoryUsage()} </p>

         <p>Number of CPUs: ${process.cpuUsage()} </p>

         </body>

         </html>

        `

        res.writeHead(200, {"Content-Type":"text/html"});

        res.end(html);

    }



    else {

        res.writeHead(404, {"Content-Type":"text/plain"});

        res.end(`404 File Not Found at ${req.url}`); 

    }

});



server.listen(3000); 

console.log("Server listening on port 3000"); 