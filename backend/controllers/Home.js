import {
    getHomes,
    getHomeById,
    insertHome,
    updateHomeById,
    deleteHomeById,
} from "../models/homeModel.js";


// lay tat ca thong tin

export const showHomes=(req,res)=>{
    getHomes((err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// lay mot thong tin

export const showHomeById=(req,res)=>{
    getHomeById(req.params.id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// tao mot thong tinmoi

export const createHome=(req,res)=>{
    const data = req.body;
    insertHome(data,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// cap nhat san pham
export const updateHome=(req,res)=>{
    const data = req.body;
    const id = req.params.id;
    updateHomeById(data,id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// xoa thong tin
export const deleteHome=(req,res)=>{
    const id = req.params.id;
    deleteHomeById(id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};