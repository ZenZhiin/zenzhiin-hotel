const hotels = require("./hotels");

module.exports = function (sequelize, DataTypes) {
    const Rooms = sequelize.define('rooms', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        room_number: {
            type: DataTypes.INTEGER,
            allowNull: false,
            validate: {
                notEmpty: true,
                len: [3, 20]
            }
        },
        currency: {
            type: DataTypes.CHAR,
            allowNull: true,
            defaultValue: 'MYR',
            validate: {
                len: [3, 3]
            },
            set(val) {
                if (val) {
                    this.setDataValue('currency', val.toUpperCase());
                }
            }
        },
        price_night: {
            type: DataTypes.DECIMAL(6, 2),
            allowNull: false,
            defaultValue: 0,
            validate: {
                isDecimal: true
            }
        },
        room_type: {
            type: DataTypes.ENUM(['standard', 'double', 'suite']),
            allowNull: false,
            defaultValue: 'standard',
            validate: {
                isIn: [['standard', 'double', 'suite']],
            },
            set(val) {
                if (val) {
                    this.setDataValue('type', val.toLowerCase());
                }
            }
        },
        breakfast: {
            type: DataTypes.BOOLEAN,
            defaultValue: 1
        },
        hotel_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            validate: {
                isNumeric: true
            }
        },
        active: {
            type: DataTypes.BOOLEAN,
            defaultValue: 1,
            get() {
                const isAvailable = this.getDataValue('active');
                return (isAvailable) ? true : false;
            }
        },
    });

    return Rooms;
};
