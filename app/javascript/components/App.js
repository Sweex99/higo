import React from 'react';
import DashboardIndex from "./dashboard/DashboardIndex";
import NavBar from './layout/NavBar';
import SideBar from "./layout/SideBar";
import CookiesProvider from 'react-cookie';

class App extends React.Component {

  render() {
    return (
      <div id="app">
        <div className="main-wrapper main-wrapper-1">
          <div className="navbar-bg"></div>
          <NavBar />
          <SideBar />
          <div className="main-content" style={{minHeight: '876px', backgroundColor: 'white'}}>
            <DashboardIndex/>
          </div>
          <footer className="main-footer">
            <div className="footer-left">
              Copyright C 2018 <div className="bullet"></div> Design By <a href="https://nauval.in/"></a>
            </div>
            <div className="footer-right">
            </div>
          </footer>
        </div>
      </div>
    )
  }
}

export default App;