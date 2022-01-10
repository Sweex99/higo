import PropTypes, { element } from 'prop-types';
import React from 'react';
import AxiosWrapper from '../../utils/AxiosWrapper';
import ClassRoom from './ClassRoom'

class ClassRoomIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = { 
      class_rooms: []
    }
  }

  componentDidMount() {
    new AxiosWrapper.get('/v1/account/class_rooms').then((response) => {
      this.setState({class_rooms: response.data})
    })
  }

  render() {
    return (
      <div>
        <ul> 
          {this.state.class_rooms.map( (element, index) => {
            return <ClassRoom title={element.title} description={element.description} index={index} id={element.id} key={index} />
          })}
        </ul>  
      </div>
    )
  }
}

export default ClassRoomIndex;
