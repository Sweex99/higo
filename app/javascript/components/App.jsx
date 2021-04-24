import PropTypes from 'prop-types';
import React from 'react';
import Hello from "../packs/hello_react";

class App extends React.Component {

}

App.defaultProps = {
    name_last: 'David'
}
App.propTypes = {
    name: PropTypes.string
}

export default App;
