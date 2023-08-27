import React from 'react';
// import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
// @ts-ignore
import Router from 'react-router-dom/BrowserRouter';
// @ts-ignore
import Route from 'react-router-dom/Route';
// @ts-ignore
import Switch from 'react-router-dom/Switch';

import SearchPage from './SearchPage';
import MasterDetailPage from './MasterDetailPage';

const App: React.FC = () => {
  return (
    <Router>
      <Switch>
        <Route path="/search">
          <SearchPage />
        </Route>
        <Route path="/details/:id">
          <MasterDetailPage />
        </Route>
        <Route path="/">
          <SearchPage />
        </Route>
      </Switch>
    </Router>
  );
};

export default App;
