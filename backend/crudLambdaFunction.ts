import { APIGatewayProxyHandler, APIGatewayProxyEvent, Context, APIGatewayProxyResult } from 'aws-lambda';
import 'source-map-support/register';
import * as mysql from 'mysql2/promise';

const handler: APIGatewayProxyHandler = async (event: APIGatewayProxyEvent, _context: Context): Promise<APIGatewayProxyResult> => {
  const action = event.queryStringParameters?.action || 'read';
  const reservationId = event.queryStringParameters?.id || '';

  // Create a connection to the RDS database
  const connection = await mysql.createConnection({
    host: 'idmreservationstack11-rdsinstance-iwfw3arljg1j.cse6xdsjd4o4.ca-central-1.rds.amazonaws.com',
    user: 'admin',
    password: 'Qpmz0921',
    database: 'ReservationsDB'
  });

  let response: APIGatewayProxyResult = {
    statusCode: 200,
    body: JSON.stringify('No action taken')
  };

  try {
    switch (action) {
      case 'create':
        const newReservation = JSON.parse(event.body || '{}');
        const createQuery = `
          INSERT INTO Reservations (arrivalDate, departureDate, roomSize, roomQuantity, firstName, lastName, email, phone, streetName, streetNumber, zipCode, state, city, extras, paymentMethod, note, tags, reminder, newsletter, confirm)
          VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `;
        const [createResult] = await connection.execute(createQuery, [
          newReservation.arrivalDate, newReservation.departureDate, newReservation.roomSize, newReservation.roomQuantity,
          newReservation.firstName, newReservation.lastName, newReservation.email, newReservation.phone,
          newReservation.streetName, newReservation.streetNumber, newReservation.zipCode, newReservation.state, newReservation.city,
          newReservation.extras, newReservation.paymentMethod, newReservation.note, newReservation.tags,
          newReservation.reminder, newReservation.newsletter, newReservation.confirm
        ]);
        response = {
          statusCode: 201,
          body: JSON.stringify({ message: 'Reservation created', id: createResult.insertId })
        };
        break;
      case 'read':
        const readQuery = `SELECT * FROM Reservations WHERE id = ?`;
        const [rows] = await connection.execute(readQuery, [reservationId]);
        response = {
          statusCode: 200,
          body: JSON.stringify(rows)
        };
        break;
      case 'update':
        const updatedReservation = JSON.parse(event.body || '{}');
        const updateQuery = `
          UPDATE Reservations SET
          arrivalDate = ?, departureDate = ?, roomSize = ?, roomQuantity = ?, firstName = ?, lastName = ?,
          email = ?, phone = ?, streetName = ?, streetNumber = ?, zipCode = ?, state = ?, city = ?,
          extras = ?, paymentMethod = ?, note = ?, tags = ?, reminder = ?, newsletter = ?, confirm = ?
          WHERE id = ?
        `;
        await connection.execute(updateQuery, [
          updatedReservation.arrivalDate, updatedReservation.departureDate, updatedReservation.roomSize, updatedReservation.roomQuantity,
          updatedReservation.firstName, updatedReservation.lastName, updatedReservation.email, updatedReservation.phone,
          updatedReservation.streetName, updatedReservation.streetNumber, updatedReservation.zipCode, updatedReservation.state, updatedReservation.city,
          updatedReservation.extras, updatedReservation.paymentMethod, updatedReservation.note, updatedReservation.tags,
          updatedReservation.reminder, updatedReservation.newsletter, updatedReservation.confirm,
          reservationId
        ]);
        response = {
          statusCode: 200,
          body: JSON.stringify({ message: 'Reservation updated' })
        };
        break;
      case 'delete':
        const deleteQuery = `DELETE FROM Reservations WHERE id = ?`;
        await connection.execute(deleteQuery, [reservationId]);
        response = {
          statusCode: 200,
          body: JSON.stringify({ message: 'Reservation deleted' })
        };
        break;
      default:
        response = {
          statusCode: 400,
          body: JSON.stringify('Invalid action')
        };
    }
  } finally {
    await connection.end();
  }

  return response;
};

export { handler };
