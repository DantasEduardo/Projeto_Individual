	'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let Usuario = sequelize.define('Usuario',{
		idCadastro: {
			field: 'idCadastro',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},		
		nome: {
			field: 'nome',
			type: DataTypes.STRING,
			allowNull: false
		},
		cpf: {
			field: 'cpf',
			type: DataTypes.CHAR(11),
			allowNull: false
		},
		cep: {
			field: 'cep',
			type: DataTypes.CHAR(8),
			allowNull: false
		},
		idade: {
			field: 'idade',
			type: DataTypes.DATE,
			allowNull: false
		},
		arteMarcial: {
			field: 'arteMarcial',
			type: DataTypes.STRING,
			allowNull: false
		},
		email: {
			field: 'email',
			type: DataTypes.STRING,
			allowNull: false
		},
		login: {
			field: 'login',
			type: DataTypes.STRING,
			allowNull: false
		},
		senha: {
			field: 'senha',
			type: DataTypes.STRING,
			allowNull: false
		}
	}, 
	{
		tableName: 'cadastro', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return Usuario;
};
