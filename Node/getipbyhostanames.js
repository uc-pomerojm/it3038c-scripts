Var dns = require('dns');

function hostnamelookup(hostname) {
    dns.lookup(hostname, function(err, addresses, family) {
        console.log(addresses);
    });

}
if(process.argv.length <= 2) {
    console.log("usage: "+ __filename +"HOSTANME.COM");
    process.exit(-1);

}


var hostname = process.argv[2];
console.log(`Checking IP of ${hostname}`);
hostnamelookup(hostnames);