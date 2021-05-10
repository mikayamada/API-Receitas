const express = require('express')
const routes = express.Router()


let db = [
    { '1': { Nome: 'Cliente 1', Idade: '20'}},
    { '2': { Nome: 'Cliente 2', Idade: '21'}},
    { '3': { Nome: 'Cliente 3', Idade: '22'}}
]

// Receitas
routes.get("/receitas", (req, res) => {
    return res.json(db);                          //     db seria o data.json
})

// Inserir Dados
routes.post("/receitas", (req, res) => {
    const body = req.body                         //     inserir os dados se não erro 400

    if(!body)
        return res.status(400).end()
    
    db.push(body)
    return res.json(body)
        
})


// Rotas do cliente
routes.get("/clientes", (req, res) => {
    return res.json(db);                          //     db seria o data.json
})

// Inserir Dados
routes.post("/clientes", (req, res) => {
    const body = req.body                         //     inserir os dados se não erro 400

    if(!body)
        return res.status(400).end()
    
    db.push(body)
    return res.json(body)
        
})

// Rotas pelo id

routes.get("/:id", (req, res) => {
    return res.json(db);                 
})

routes.post("/:id", (req, res) => {
    const body = req.body                
    
    if(!body)
        return res.status(400).end()

    db.push(body)
    return res.jason(body)
})

routes.delete("/:id", (req, res) => {
    const id = req.params.id

    let newDB = db.filter(item => {
        if(!item[id])
            return item
    })

    db = newDB

    return res.send(newDB)
})

module.exports = routes