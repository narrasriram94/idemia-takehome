import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import { TextField, Button, Paper } from '@material-ui/core';
import axios from 'axios';

interface RouteParams {
  id: string;
}

const MasterDetailPage: React.FC = () => {
  const { id } = useParams<RouteParams>();
  const [reservation, setReservation] = useState<any>(null);

  useEffect(() => {
    const fetchReservationDetails = async () => {
      try {
        const response = await axios.get(`${process.env.REACT_APP_CRUD_API_URL}/${id}`);
        setReservation(response.data);
      } catch (error) {
        console.error('Error fetching reservation details:', error);
      }
    };

    fetchReservationDetails();
  }, [id]);

  const handleUpdate = () => {
    // TODO: Implement update logic here
  };

  const handleDelete = () => {
    // TODO: Implement delete logic here
  };

  return (
    <div>
      <Paper elevation={3}>
        <TextField label="Reservation ID" value={id} disabled />
        {/* TODO: Display other reservation details here */}
        <Button variant="contained" color="primary" onClick={handleUpdate}>
          Update
        </Button>
        <Button variant="contained" color="secondary" onClick={handleDelete}>
          Delete
        </Button>
      </Paper>
    </div>
  );
};

export default MasterDetailPage;
