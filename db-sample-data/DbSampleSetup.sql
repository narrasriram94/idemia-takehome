CREATE DATABASE ReservationsDB;

USE ReservationsDB;

CREATE TABLE Reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    arrivalDate DATE,
    departureDate DATE,
    roomSize VARCHAR(255),
    roomQuantity INT,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    streetName VARCHAR(255),
    streetNumber VARCHAR(255),
    zipCode VARCHAR(255),
    state VARCHAR(255),
    city VARCHAR(255),
    extras JSON,
    paymentMethod VARCHAR(255),
    note TEXT,
    tags JSON,
    reminder BOOLEAN,
    newsletter BOOLEAN,
    confirm BOOLEAN
);

INSERT INTO Reservations (
    arrivalDate, departureDate, roomSize, roomQuantity,
    firstName, lastName, email, phone, streetName, streetNumber,
    zipCode, state, city, extras, paymentMethod, note, tags,
    reminder, newsletter, confirm
)
VALUES (
    '2023-09-01', '2023-09-10', 'Double', 2,
    'John', 'Doe', 'john.doe@example.com', '1234567890', 'Main St', '10',
    '12345', 'NY', 'New York', '["WiFi", "Breakfast"]', 'Credit Card', 'Near elevator', '["Business", "Long Stay"]',
    TRUE, FALSE, TRUE
);


INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-03', '2023-09-07', 'Double', 1,
        'Alice', 'Smith', 'alice.smith@example.com', '1234526789', 'Main St', '12',
        '12345', 'NY', 'New York', '["Breakfast", "Gym Access"]', 'Credit Card', 'Near elevator', '["Weekend", "Business"]',
        TRUE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-04', '2023-09-08', 'Single', 2,
        'Bob', 'Johnson', 'bob.johnson@example.com', '1234536789', 'Main St', '13',
        '12345', 'NY', 'New York', '["Breakfast", "WiFi"]', 'Cash', 'Away from elevator', '["Leisure", "Weekend"]',
        FALSE, TRUE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-05', '2023-09-09', 'Double', 1,
        'Charlie', 'Williams', 'charlie.williams@example.com', '1234546789', 'Main St', '14',
        '12345', 'NY', 'New York', '["Breakfast", "WiFi"]', 'Credit Card', 'Near elevator', '["Leisure", "Business"]',
        TRUE, FALSE, TRUE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-06', '2023-09-10', 'Single', 2,
        'David', 'Brown', 'david.brown@example.com', '1234556789', 'Main St', '15',
        '12345', 'NY', 'New York', '["Parking", "Gym Access"]', 'Credit Card', 'Away from elevator', '["Leisure", "Weekend"]',
        FALSE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-07', '2023-09-11', 'Double', 1,
        'Eve', 'Jones', 'eve.jones@example.com', '1234566789', 'Main St', '16',
        '12345', 'NY', 'New York', '["Parking", "Breakfast"]', 'Cash', 'Near elevator', '["Leisure", "Weekend"]',
        TRUE, TRUE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-08', '2023-09-12', 'Single', 2,
        'Frank', 'Davis', 'frank.davis@example.com', '1234576789', 'Main St', '17',
        '12345', 'NY', 'New York', '["Parking", "Gym Access"]', 'PayPal', 'Away from elevator', '["Business", "Leisure"]',
        FALSE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-09', '2023-09-13', 'Double', 1,
        'Grace', 'Garcia', 'grace.garcia@example.com', '1234586789', 'Main St', '18',
        '12345', 'NY', 'New York', '["Parking", "WiFi"]', 'Credit Card', 'Near elevator', '["Business", "Long Stay"]',
        TRUE, FALSE, TRUE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-10', '2023-09-14', 'Single', 2,
        'Helen', 'Martinez', 'helen.martinez@example.com', '1234596789', 'Main St', '19',
        '12345', 'NY', 'New York', '["WiFi", "Breakfast"]', 'PayPal', 'Away from elevator', '["Weekend", "Leisure"]',
        FALSE, TRUE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-11', '2023-09-15', 'Double', 1,
        'Ivy', 'Anderson', 'ivy.anderson@example.com', '12345106789', 'Main St', '20',
        '12345', 'NY', 'New York', '["WiFi", "Gym Access"]', 'Debit Card', 'Near elevator', '["Leisure", "Business"]',
        TRUE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-12', '2023-09-16', 'Single', 2,
        'Jack', 'Thomas', 'jack.thomas@example.com', '12345116789', 'Main St', '21',
        '12345', 'NY', 'New York', '["Gym Access", "Breakfast"]', 'Cash', 'Away from elevator', '["Business", "Weekend"]',
        FALSE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-13', '2023-09-17', 'Double', 1,
        'Kathy', 'Jackson', 'kathy.jackson@example.com', '12345126789', 'Main St', '22',
        '12345', 'NY', 'New York', '["Gym Access", "Breakfast"]', 'Cash', 'Near elevator', '["Weekend", "Leisure"]',
        TRUE, TRUE, TRUE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-14', '2023-09-18', 'Single', 2,
        'Linda', 'Thompson', 'linda.thompson@example.com', '12345136789', 'Main St', '23',
        '12345', 'NY', 'New York', '["WiFi", "Breakfast"]', 'Cash', 'Away from elevator', '["Business", "Long Stay"]',
        FALSE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-15', '2023-09-19', 'Double', 1,
        'Mike', 'White', 'mike.white@example.com', '12345146789', 'Main St', '24',
        '12345', 'NY', 'New York', '["Parking", "Breakfast"]', 'Credit Card', 'Near elevator', '["Long Stay", "Weekend"]',
        TRUE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-16', '2023-09-20', 'Single', 2,
        'Nina', 'Harris', 'nina.harris@example.com', '12345156789', 'Main St', '25',
        '12345', 'NY', 'New York', '["Parking", "Gym Access"]', 'Credit Card', 'Away from elevator', '["Business", "Weekend"]',
        FALSE, TRUE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-17', '2023-09-21', 'Double', 1,
        'Oscar', 'Clark', 'oscar.clark@example.com', '12345166789', 'Main St', '26',
        '12345', 'NY', 'New York', '["Gym Access", "Breakfast"]', 'Debit Card', 'Near elevator', '["Weekend", "Leisure"]',
        TRUE, FALSE, TRUE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-18', '2023-09-22', 'Single', 2,
        'Paul', 'Lewis', 'paul.lewis@example.com', '12345176789', 'Main St', '27',
        '12345', 'NY', 'New York', '["Breakfast", "WiFi"]', 'Credit Card', 'Away from elevator', '["Weekend", "Business"]',
        FALSE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-19', '2023-09-23', 'Double', 1,
        'Quinn', 'Nelson', 'quinn.nelson@example.com', '12345186789', 'Main St', '28',
        '12345', 'NY', 'New York', '["Breakfast", "Parking"]', 'Cash', 'Near elevator', '["Business", "Weekend"]',
        TRUE, TRUE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-20', '2023-09-24', 'Single', 2,
        'Rachel', 'Hall', 'rachel.hall@example.com', '12345196789', 'Main St', '29',
        '12345', 'NY', 'New York', '["Gym Access", "WiFi"]', 'Debit Card', 'Away from elevator', '["Weekend", "Leisure"]',
        FALSE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-21', '2023-09-25', 'Double', 1,
        'Steve', 'Allen', 'steve.allen@example.com', '12345206789', 'Main St', '30',
        '12345', 'NY', 'New York', '["WiFi", "Gym Access"]', 'Credit Card', 'Near elevator', '["Long Stay", "Leisure"]',
        TRUE, FALSE, TRUE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-22', '2023-09-26', 'Single', 2,
        'Tracy', 'Scott', 'tracy.scott@example.com', '12345216789', 'Main St', '31',
        '12345', 'NY', 'New York', '["Parking", "Breakfast"]', 'PayPal', 'Away from elevator', '["Weekend", "Leisure"]',
        FALSE, TRUE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-23', '2023-09-27', 'Double', 1,
        'Ursula', 'Adams', 'ursula.adams@example.com', '12345226789', 'Main St', '32',
        '12345', 'NY', 'New York', '["WiFi", "Parking"]', 'Credit Card', 'Near elevator', '["Business", "Long Stay"]',
        TRUE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-24', '2023-09-28', 'Single', 2,
        'Victor', 'King', 'victor.king@example.com', '12345236789', 'Main St', '33',
        '12345', 'NY', 'New York', '["Parking", "WiFi"]', 'PayPal', 'Away from elevator', '["Long Stay", "Weekend"]',
        FALSE, FALSE, FALSE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-25', '2023-09-29', 'Double', 1,
        'Wendy', 'Wright', 'wendy.wright@example.com', '12345246789', 'Main St', '34',
        '12345', 'NY', 'New York', '["Breakfast", "Parking"]', 'Cash', 'Near elevator', '["Business", "Long Stay"]',
        TRUE, TRUE, TRUE
    );
INSERT INTO Reservations (
        arrivalDate, departureDate, roomSize, roomQuantity,
        firstName, lastName, email, phone, streetName, streetNumber,
        zipCode, state, city, extras, paymentMethod, note, tags,
        reminder, newsletter, confirm
    )
    VALUES (
        '2023-09-26', '2023-09-30', 'Single', 2,
        'Xander', 'Lopez', 'xander.lopez@example.com', '12345256789', 'Main St', '35',
        '12345', 'NY', 'New York', '["Parking", "WiFi"]', 'Debit Card', 'Away from elevator', '["Long Stay", "Business"]',
        FALSE, FALSE, FALSE
    );


