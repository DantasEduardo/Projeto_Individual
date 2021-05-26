	'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let treino = sequelize.define('treino',{
		idCadastro: {
			field: 'idTreino',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},		
		nome: {
			field: 'nome',
			type: DataTypes.STRING,
			allowNull: false
		},
		desc: {
			field: 'descricao',
			type: DataTypes.STRING,
			allowNull: false
		},
		fk: {
			field: 'fkCadastro',
			type: DataTypes.INTEGER,
			allowNull: false
		}
	}, 
	{
		tableName: 'treinos', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return treino;
};
