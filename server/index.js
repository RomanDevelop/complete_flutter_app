// imports from packages
const express = require('express');
const mongoose = require('mongoose');

// imports from other files
const authRouter = require("./routes/auth");

// init
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://romankliakhin:8P1Gko2qEyIqOIwr@cluster0.iisztnd.mongodb.net/?retryWrites=true&w=majority"

// middleware
app.use(express.json());
app.use(authRouter);

// connections
mongoose.connect(DB).then(() => {
    console.log("Connection Successful");
}).catch((e) => {
    console.log(e);
});  

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
});