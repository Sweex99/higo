import PropTypes from 'prop-types';
import React, { useState } from 'react';
import '../../../vendors/stisla/scripts';
import '../../../vendors/stisla/stisla';
import 'bootstrap/dist/css/bootstrap';
import 'bootstrap/dist/js/bootstrap';

const HelloWorld = (props) => {
  const [name, setName] = useState(props.name);

  return (
    <div className="card">
      <div className="card-header">
        <h4>Statistics</h4>
        <div className="card-header-action">
          <div className="btn-group">
            <a href="#" className="btn btn-primary">Week</a>
            <a href="#" className="btn">Month</a>
          </div>
        </div>
      </div>
    </div>
  );
};

HelloWorld.propTypes = {
  name: PropTypes.string.isRequired, // this is passed from the Rails view
};

export default HelloWorld;
