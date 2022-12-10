/* Importing the express and mongoose packages. */
const express = require('express');
const mongoose = require("mongoose");
const http = require('http');
const { Server } = require("socket.io");


// IMPORTS FROM OTHER FILES
const loginAuthRouter = require("./routes/loginAuth");
const driverAuthRouter = require("./routes/driverAuth");
const driverEditRouter = require("./routes/driverEdit");
const driverProfileRouter = require("./routes/driverProfile");
const customerAuthRouter = require("./routes/customerAuth");
const customerMainRouter = require("./routes/customerMain");
const customerEditRouter = require("./routes/customerEdit");
const customerProfileRouter = require("./routes/customerProfile");
const tripCreateRouter = require("./routes/createTrip");
const getModelRouter = require("./routes/getModel");
const getTripsRouter= require("./routes/getTrips");

/* Creating a server on port 3000. */
const PORT = 3000;

/* Creating an instance of the express server. */
const app = express();
const server = http.createServer(app);
const io = new Server(server);
const connection = require('./db.js');

// middleware
app.use(express.json());
app.use(loginAuthRouter);
app.use(customerAuthRouter);
app.use(customerEditRouter);
app.use(customerMainRouter);
app.use(customerProfileRouter);
app.use(driverEditRouter);
app.use(driverAuthRouter);
app.use(driverProfileRouter);
app.use(tripCreateRouter);
app.use(getModelRouter);
app.use(getTripsRouter);

//connections
connection()

app.listen(PORT, () =>{
    console.log('connected ad port ' + PORT);
});


const Message = require("./models/message");

io.on('connection',(socket) =>{
    console.log("User connected");

    socket.on('startChat', (msg)=>{
        console.log(msg);
        roomID = msg.senderID + msg.reciverID;

        socket.join(roomID);

        Message.find({
            roomId: msg.room_id
          }).then((messages) => {
            io.to(socket.id).emit('old_messages', messages);
          }).catch((err) => {
            console.log(err);
          });

    });

    socket.on('send message',(msg) =>{
        io.to(socket.id).emit('send message',msg);
        let message = new Message({
            content:msg.content,
            senderID: msg.senderID,
            reciverID: msg.reciverID,
            roomID: socket.id
        });
            
        
    });

});


