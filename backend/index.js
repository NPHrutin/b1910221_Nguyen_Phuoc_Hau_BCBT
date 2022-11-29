import express from 'express';
import cors from 'cors' ;
import bodyParser from 'body-parser' ;
import router from './routes/routes.js';


// init express
const app = express()


// use express json
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));


//use cors
app.use(cors())
app.use(express.json());

// use router
app.use(router);


app.get('/', function(req, res){
    res.json({ message: 'Welcome to shop tree api' });
    // res.send('sao khong chay duoc')
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});