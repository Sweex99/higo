
import ReactOnRails from 'react-on-rails';
import DashboardIndex from '../components/dashboard/DashboardIndex';
import HelloWorld from '../components/HelloWorld';
import ClassRoomIndex from '../components/classroom/ClassRoomIndex'

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorld, DashboardIndex, ClassRoomIndex,
});
