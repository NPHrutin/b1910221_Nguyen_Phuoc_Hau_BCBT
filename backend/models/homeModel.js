// kết nói với dư liệu

import db from '../config/database.js'

export const getHomes = (result) => {
    db.query("SELECT * FROM trangchu", (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};

// lay mot thong tin

export const getHomeById = (id,result) => {
    db.query("SELECT * FROM trangchu WHERE id_tc = ?",[id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results[0]);
        }
    });
};

// them mot thong tin 

export const insertHome = (data,result) => {
    db.query("INSERT INTO trangchu SET ?",data, (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results[0]);
        }
    });
};


// cap nhat thong tin

export const updateHomeById = (data,id,result) => {
    db.query("UPDATE trangchu SET url = ?, mota = ?  WHERE id_tc = ?",
                [data.url, data.mota,id], 
                (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};

//xoa thong tin

export const deleteHomeById = (id,result) => {
    db.query("DELETE FROM sanphan WHERE id_tc = ?",[id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};