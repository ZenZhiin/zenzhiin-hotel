module.exports = function(sequelize, DataTypes) {
    const Bookings = sequelize.define('bookings', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        checkin: {
            type: DataTypes.DATE,
            allowNull: false
        },
        checkout: {
            type: DataTypes.DATE,
            allowNull: false
        },
        hotelId:{
            type: DataTypes.INTEGER,
            allowNull : false
        },
        roomId:{
            type: DataTypes.INTEGER,
            allowNull : false
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
        comments: {
            type: DataTypes.TEXT,
            validate: {
                notEmpty: true,
            }
        },
        bookingType: {
            type: DataTypes.ENUM(),
            values: ['online', 'phone', 'agency', 'desk'],
            allowNull: true,
            defaultValue: 'online',
            validate: {
                isIn: [['online', 'phone', 'agency', 'desk']],
            },
            set(val) {
                if (val) {
                    this.setDataValue('type', val.toLowerCase());
                }
            }
        },
        numberOfTraveller:{
            type: DataTypes.INTEGER,
            defaultValue: 1
        },
        hotelId:{
            type: DataTypes.INTEGER,
            allowNull : false
        }
    });

    return Bookings;
}