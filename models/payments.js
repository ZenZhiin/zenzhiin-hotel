const bookings = require("./bookings");

module.exports = function(sequelize, DataTypes) {
    const Payments = sequelize.define('payments', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        method: {
            type: DataTypes.ENUM( ['cash', 'card', 'online']),
            allowNull: false,
            defaultValue: 'card'
        },
        currency: {
            type: DataTypes.CHAR,
            allowNull: true,
            defaultValue: 'MYR',
            validate: {
                len: [3,3]
            },
            set(val) {
                if (val) {
                    this.setDataValue('currency', val.toUpperCase());
                }
            }
        },
        price: {
            type: DataTypes.DECIMAL(6,2),
            allowNull: false,
            validate: {
                isDecimal: true
            }
        },
        booking_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            validate: {
                isNumeric: true
            }
        },
        paymentStatus:{
            type: DataTypes.ENUM( ['success', 'pending', 'deny']),
            defaultValue: 'pending'
        }
    })
    return Payments;
};