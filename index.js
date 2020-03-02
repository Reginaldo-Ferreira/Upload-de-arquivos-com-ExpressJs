const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const multer = require("multer");
const path = require("path");

app.set('view engine', 'ejs');
//Body parser
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

const storage = multer.diskStorage({
	destination: function(req, file, cb){
		cb(null,"uploads/");
	},
	filename: function(req, file, cb){
		// para salvar com o nome original [file.original.name]
		cb(null, file.originalname + Date.now() + path.extname(file.originalname ));
	}
});

const upload = multer({storage}); // não criar o caminho com este formato '/uploads/' caso seja ele irá criar uma pasta na pasta nodemodels



const port = 8080;
app.get("/",(req, res) => {
	res.render("index");
});

//	console.log(req.body);
//	res.send(req.body);


 app.post("/upload",upload.single("file"),(req, res) => {
	 //res.redirect("/");
	 res.send("arquivo recebido!");
	 
 });

app.listen(port, () =>{
	console.log(`Servido de Upload está rodando [Port:${ port }]`);
});