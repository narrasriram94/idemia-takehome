import React, { useState } from 'react';
import { Table, TextField, Button, Paper } from '@material-ui/core';
import axios from 'axios';

const SearchPage: React.FC = () => {
  const [searchCriteria, setSearchCriteria] = useState<string>('');
  const [searchResults, setSearchResults] = useState<any[]>([]);

  const handleSearch = async () => {
    try {
      const response = await axios.get(`${process.env.REACT_APP_SEARCH_API_URL}?criteria=${searchCriteria}`);
      setSearchResults(response.data);
    } catch (error) {
      console.error('Error fetching search results:', error);
    }
  };

  return (
    <div>
      <Paper elevation={3}>
        <TextField
          label="Search"
          value={searchCriteria}
          onChange={(e) => setSearchCriteria(e.target.value)}
        />
        <Button variant="contained" color="primary" onClick={handleSearch}>
          Search
        </Button>
      </Paper>
      <Table>
        {/* TODO: Display search results here */}
      </Table>
    </div>
  );
};

export default SearchPage;
