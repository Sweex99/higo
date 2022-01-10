import React from "react";
import axios from "axios";
import { Link } from "react-router-dom";

class SideBar extends React.Component {

  componentDidMount() {
    axios.get(`/account/dashboard`)
      .then(res => {
        const persons = res.data;
        console.log(persons);
      })
  }

  render() {
    return (
      <div className="main-sidebar sidebar-style-2" tabIndex="1" style={{overflow: "hidden", outline: "none"}}>
        <aside id="sidebar-wrapper">
          <div className="sidebar-brand">
            <a href="index.html">Stisla</a>
          </div>
          <div className="sidebar-brand sidebar-brand-sm">
            <a href="index.html">St</a>
          </div>
          <div className="p-3 hide-sidebar-mini">
            <Link to='/create_class_room' className='btn btn-success btn-lg btn-block btn-icon-split'>
              <i className="fas fa-plus">Створити Клас</i>
            </Link>
          </div>
          <ul className="sidebar-menu">
            <li>
              <Link to='/class_rooms' className='nav-link'>
                <i className='fas fa-chart-line'><span>Dashboard</span></i>
              </Link>
            </li>
            <li>
              <a href="#" className="nav-link" >
                <i className="fas fa-school"><span>Мій Клас</span></i>
              </a>
            </li>
            <li>
              <a href="#" className="nav-link" >
                <i className="fas fa-school"><span>Мій Клас</span></i>
              </a>
            </li>
            <li>
              <a href="#" className="nav-link" >
                <i className="fas fa-school"><span>Мій Клас</span></i>
              </a>
            </li>
            <li>
              <a href="#" className="nav-link" >
                <i className="fas fa-school"><span>Мій Клас</span></i>
              </a>
            </li>
            <li>
              <a href="#" className="nav-link" >
                <i className="fas fa-school"><span>Мій Клас</span></i>
              </a>
            </li>
            <li>
              <a href="#" className="nav-link" >
                <i className="fas fa-school"><span>Мій Клас</span></i>
              </a>
            </li>
            <li>
              <a href="#" className="nav-link" >
                <i className="fas fa-school"><span>Мій Клас</span></i>
              </a>
            </li>

          </ul>
        </aside>
      </div>
    )
  }
}

export default SideBar;