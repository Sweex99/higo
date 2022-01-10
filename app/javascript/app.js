import React from 'react';
import NavBar from './src/components/layout/NavBar';
import SideBar from "./src/components/layout/SideBar";
import Routes from './src/routes/Routes';
import { Router } from 'react-router-dom';
import { createBrowserHistory } from 'history'

class App extends React.Component {
  history() {
    return createBrowserHistory();
  }

  render() {
    return (
      <div id="app">
        <div className="main-wrapper main-wrapper-1">
          <Router history={this.history()}>
            <div className="navbar-bg"></div>
            <NavBar />
            <SideBar />
            <div className="main-content" style={{minHeight: '876px', backgroundColor: 'white'}}>
              <Routes />
            </div>
            <footer className="main-footer">
              <div className="footer-left">
                Copyright C {new Date().getFullYear()} <div className="bullet"></div> Design By <a href="https://nauval.in/"></a>
              </div>
              <div className="footer-right">
              </div>
            </footer>
          </Router>
        </div>
      </div>
    )
  }
}

export default App;