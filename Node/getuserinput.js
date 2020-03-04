import { prototype } from "module";

process.standardout.write("Hello What is your name?");

process.stdin.on('data', function(data){
    console.log("hello " + data.toString());
    process.exit();
})

process.on('exit', function(){
    console.log("thanks for the info");
})