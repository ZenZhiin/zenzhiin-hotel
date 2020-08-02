use hotelmanagement_db;

insert into locations (location_name, updatedAt, createdAt)  
values ('Kuala Lumpur', CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into locations (location_name, updatedAt, createdAt)  
values ('Penang', CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into locations (location_name, updatedAt, createdAt)  
values ('Kedah', CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into locations (location_name, updatedAt, createdAt)  
values ('Selangor', CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into locations (location_name, updatedAt, createdAt)  
values ('Melaka', CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into locations (location_name, updatedAt, createdAt)  
values ('Johor Bharu', CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);

-- Dummy Data Hotels
insert into hotels (hotel_name, location_id, address, active, updatedAt, createdAt) 
VALUES ('A-Hotel', 1, 'unknown', 1,  CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into hotels (hotel_name, location_id,  address,active, updatedAt, createdAt) 
VALUES ('B-Hotel', 2,  'unknown',1, CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into hotels (hotel_name, location_id,  address,active, updatedAt, createdAt) 
VALUES ('C-Hotel', 3,  'unknown',1, CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into hotels (hotel_name, location_id,  address,active, updatedAt, createdAt) 
VALUES ('D-Hotel', 4,  'unknown',1, CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into hotels (hotel_name, location_id,  address,active, updatedAt, createdAt) 
VALUES ('E-Hotel', 5,  'unknown',1, CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);
insert into hotels (hotel_name, location_id,  address,active, updatedAt, createdAt) 
VALUES ('F-Hotel', 6,  'unknown',1,  CURRENT_TIMESTAMP,  CURRENT_TIMESTAMP);

-- Dummy Data Rooms
insert into rooms( room_number, currency, price_night, breakfast, hotel_id, active, createdAt, updatedAt)
values ( '100', 'MYR', 50.00, 0, 1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '101', 'MYR', 50.00, 0,  1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '102', 'MYR', 50.00, 0,  1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '104', 'MYR', 100.00, 1,  1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '105', 'MYR', 100.00, 1,  1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '106', 'MYR', 100.00, 1,  1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '107', 'MYR', 150.00, 1,  1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '108', 'MYR', 150.00, 1,  1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '109', 'MYR', 150.00, 1,  1, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );

insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '100', 'MYR', 50.00, 0,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '101', 'MYR', 50.00, 0,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '102', 'MYR', 50.00, 0,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '104', 'MYR', 100.00, 0,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '105', 'MYR', 100.00, 1,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '106', 'MYR', 100.00, 1,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '107', 'MYR', 150.00, 1,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '108', 'MYR', 150.00, 1,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '109', 'MYR', 150.00, 1,  2, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );


insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '100', 'MYR', 50.00, 0,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '101', 'MYR', 50.00, 0,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '102', 'MYR', 50.00, 0,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '104', 'MYR', 100.00, 0,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '105', 'MYR', 100.00, 1,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '106', 'MYR', 100.00, 1,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '107', 'MYR', 150.00, 1,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '108', 'MYR', 150.00, 1,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '109', 'MYR', 150.00, 1,  3, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );


insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '100', 'MYR', 50.00, 0,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '101', 'MYR', 50.00, 0,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '102', 'MYR', 50.00, 1,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '104', 'MYR', 100.00, 1,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '105', 'MYR', 100.00, 1,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '106', 'MYR', 100.00, 1,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '301', 'MYR', 150.00, 1,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '302', 'MYR', 150.00, 1,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '303', 'MYR', 150.00, 1,  4, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );

insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '100', 'MYR', 50.00, 0,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '101', 'MYR', 50.00, 0,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '102', 'MYR', 50.00, 0,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '104', 'MYR', 100.00, 0,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '105', 'MYR', 100.00, 0,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '106', 'MYR', 100.00, 0,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '107', 'MYR', 150.00, 1,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '108', 'MYR', 150.00, 1,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '109', 'MYR', 150.00, 1,  5, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );

insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '100', 'MYR', 50.00, 0,  6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '101', 'MYR', 50.00, 0,  6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '102', 'MYR', 50.00, 0,  6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '104', 'MYR', 100.00, 0, 6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '105', 'MYR', 100.00, 0, 6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '106', 'MYR', 100.00, 0, 6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '107', 'MYR', 150.00, 1, 6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '108', 'MYR', 150.00, 1, 6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );
insert into rooms( room_number, currency, price_night,  breakfast, hotel_id, active, createdAt, updatedAt)
values ( '109', 'MYR', 150.00, 1, 6, 1,  CURRENT_TIMESTAMP ,  CURRENT_TIMESTAMP );