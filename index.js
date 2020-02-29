const express = require("express");
const app = express();
const multer = require("multer");

app.set('view engine', 'ejs');

const upload = multer({dest: "uploads/"}); // não criar o caminho com este formato '/uploads/' caso seja ele irá criar uma pasta na pasta nodemodels



const port = 8080;
app.get("/",(req, res) => {
	res.render("index");
});

app.post("/upload",upload.single("file"),(req, res) => {
	res.send("arquivo recebido!");
});

app.listen(port, () =>{
	console.log(`Servido de Upload está rodando [Port:${ port }]`);
});