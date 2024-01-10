import './App.css';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css'
import React from 'react';

import { Route, Routes, Link } from "react-router-dom";

import Driver from './Driver';
import Customer from './Customer';
import EditDriverDetails from './EditDriverDetails';

function App() {
  return (
    <div className="App">
      <nav className="navbar navbar-expand-lg navbar-light bg-light">
        <button className="navbar-brand" href="#">🅲🅰🆁🆉</button>
        <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse" id="navbarNav">
          <ul className="navbar-nav">
            <li className="nav-item active">
              <Link to="/customer">customer</Link>
            </li>
            <li className="nav-item">
              <Link to="/driver">Driver</Link>

            </li>

          </ul>
        </div>
      </nav>

      <Routes>
        <Route path="/customer" element={<Customer />} />
        <Route path="/driver" element={<Driver />} />
        <Route path="/edit" element={<EditDriverDetails />} />
      </Routes>


    </div>
  );
};
export default App;