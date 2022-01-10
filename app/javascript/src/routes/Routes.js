import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import ClassRoomIndex from '../components/classroom/ClassRooms';
import CreateClassRoom from '../components/classroom/ClassRoomForm';
import DashboardIndex from '../components/dashboard/DashboardIndex';

const Routers = () => {
	return (
    <Switch>
      <Route exact path='/' component={DashboardIndex} />
      <Route exact path='/class_rooms' component={ClassRoomIndex} />
      <Route exact path='/create_class_room' component={CreateClassRoom} />
    </Switch>
	)
}

export default Routers;
