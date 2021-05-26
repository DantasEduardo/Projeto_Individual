var express = require('express');
var router = express.Router();
var sequelize = require('../models').sequelize;
var Publicacao = require('../models').Publicacao;

/* ROTA QUE RECUPERA CRIA UMA PUBLICAÇÃO */
router.post('/publicar/:idCadastro', function(req, res, next) {
    console.log("Iniciando Publicação...")
    
	let idCadastro = req.params.idCadastro;

    Publicacao.create({
        descricao: req.body.comentario,
        fkUsuario: idCadastro
    }).then(resultado => {
        console.log("Post realizado com sucesso!!");
        res.send(resultado);
    }).catch(erro => {
        console.log('DEU UM ERRINHO')
        console.error(erro);
        res.status(500).send(erro.message);
    })
})

/* ROTA QUE RECUPERA TODAS AS PUBLICAÇÕES */
router.get('/', function(req, res, next) {
	console.log('Recuperando todas as publicações');
	
    let instrucaoSql = `SELECT 
    cadastro.nome,
    descricao
    FROM comentario
    INNER JOIN cadastro
    ON fkCadastro = idCadastro
    ORDER BY idCadastro DESC`;

	sequelize.query(instrucaoSql, {
		model: Publicacao,
		mapToModel: true 
	})
	.then(resultado => {
		console.log(`Encontrados: ${resultado.length}`);
		res.json(resultado);
	}).catch(erro => {
		console.error(erro);
		res.status(500).send(erro.message);
	});
});



/* ROTA QUE RECUPERA AS PUBLICAÇÕES DE UM USUÁRIO PELO ID */
router.get('/:idCadastro', function(req, res, next) {
	console.log('Recuperando todas as publicações');
	
	let idCadastro = req.params.idCadastro;

    let instrucaoSql = `SELECT 
    email,
    login,
    FROM cadastro
    WHERE idCadastro = ${idCadastro}
    ORDER BY publicacao.id DESC`;

	sequelize.query(instrucaoSql, {
		model: Publicacao,
		mapToModel: true 
	})
	.then(resultado => {
		console.log(`Encontrados: ${resultado.length}`);
		res.json(resultado);
	}).catch(erro => {
		console.error(erro);
		res.status(500).send(erro.message);
	});
});

module.exports = router;
