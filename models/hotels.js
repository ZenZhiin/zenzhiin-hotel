module.exports = function(sequelize, DataTypes) {
    var Hotels = sequelize.define("hotels", {
        id : {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        hotel_name : {
            type : DataTypes.CHAR,
            allowNull : false
        },
        location_id : {
            type : DataTypes.INTEGER,
            allowNull : false
        },
        address :{
            type: DataTypes.CHAR,
            allowNull : false
        },
        active : {
            type: DataTypes.BOOLEAN,
            defaultValue: 0
        }
    })

    return Hotels;
}