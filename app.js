const express = require("express");
const os = require("os");
const app = express();


app.get("/", (request, response) => {
    return response
    .status(200)
    .json({
        message: "Ola",
    });
});

app.get("/liveness", (request, response) => {
    return response
    .status(200)
    .json({
        message: "Meu app esta ok",
        path: process.cwd(),
        //gid: process.getegid(),  
        //uid: process.geteuid(),  
        date: new Date().getTime()
    });
});

    app.get("/readiness", (request, response) => {
        return response
        .status(200)
        .json({
            message: "Meu app esta pronto",
            path: process.cwd(),
            //gid: process.getegid(),  
            //uid: process.geteuid(),  
            date: new Date().getTime()
        });
});


module.exports = app;