var http= require("http");
var fs = require("fs");
var os =("os");
var ip =("ip");
var server = http.createServer(function(req, res){
    if(req.url === "/") {
        false.readfile("./public/index.html", "UTF-8",function(err, body){
            res.writeHead(200, {"Content-Type":"text/html"});
            res.end(body);
        });
        else if(req.url.match("/sysinfo")){
            myhostname=os.hostname();
            html=`
             
    <!DOCTYPE html>
    <html>
    <head>
    <title> Node JS response</title>
    </head>
    <p>HostName: </p>
    <p>IP: </p>



    </body>
    </html>
    `
            `
        }
        else {
            res.writeHead(404)
        }
    }
    res. writeHead(200, {"content-type":"text/html"});
    res.end("Hello from node");
    
    `
    <!DOCTYPE html>
    <html>
    <head>
    <title> Node JS response</title>
    </head>
    <h1>Hello!</h1>
    <p>Content</p>
    <p>${req.url}</p>
    <p>${req.methond}</p>
    </body>
    </html>
    `
});

server.listen(3000); 
console.log("Server listing on port 3000");
