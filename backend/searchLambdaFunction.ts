import { APIGatewayProxyHandler } from 'aws-lambda';
import 'source-map-support/register';
import * as mysql from 'mysql2/promise';

export const handler: APIGatewayProxyHandler = async (event, _context) => {
  const searchCriteria = event.queryStringParameters?.searchCriteria || '';

  // Create a connection to the RDS database
  const connection = await mysql.createConnection({
    host: 'idmreservationstack11-rdsinstance-iwfw3arljg1j.cse6xdsjd4o4.ca-central-1.rds.amazonaws.com',
    user: 'admin',
    password: 'Qpmz0921',
    database: 'ReservationsDB'
  });

  let searchResults: any[] = [];
  
  try {
    // Query RDS for matching reservations based on multiple fields
    const query = 
    `
    SELECT * FROM reservations WHERE 
      firstName LIKE ? OR
      lastName LIKE ? OR
      email LIKE ? OR
      roomSize LIKE ?
    `;
    const [rows] = await connection.query(query, [searchCriteria, searchCriteria, searchCriteria, searchCriteria]);
    searchResults = JSON.parse(JSON.stringify(rows));
  } finally {
    await connection.end();
  }

  return {
    statusCode: 200,
    body: JSON.stringify(searchResults)
  };
};
