module.exports = function(sequelize, DataTypes) {
    var Guests = sequelize.define("guests", {
      id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      first_name: {
        type: DataTypes.CHAR,
        allowNull: false,
        validate: {
          len: [1]
        }
      },
      last_name: {
        type: DataTypes.CHAR,
        allowNull: false,
        validate: {
          len: [1]
        }
      },
      phone: {
        type: DataTypes.INTEGER,
        allowNull: false
      },
      email: {
        type: DataTypes.CHAR,
        allowNull: false
      },
      booking_id: {
        type: DataTypes.INTEGER,
        allowNull: false
      }
    });

    return Guests;
  }