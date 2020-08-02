module.exports = function(sequelize, DataTypes) {
    var Locations = sequelize.define("locations", {
        id : {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        location_name : {
            type : DataTypes.CHAR,
            allowNull : false
        }
    })
    return Locations;
}