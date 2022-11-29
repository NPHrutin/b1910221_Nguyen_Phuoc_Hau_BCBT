// get the client
import mysql from 'mysql2';

// create the connection to database
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'dbtree'
});

// const sql = 'select ten from sampham'

db.connect(error => {
  if (error) throw error;
  console.log("Successfully connected to the database.");
});

// db.query(sql,
//   function(err, results, fields) {
//     console.log(results); // results contains rows returned by server
//     console.log(fields); // fields contains extra meta data about results, if available
//   }
// );

export default db;
