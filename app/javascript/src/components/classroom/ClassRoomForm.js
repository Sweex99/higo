import React from "react";
import AxiosWrapper from '../../utils/AxiosWrapper'

class CreateClassRoom extends React.Component {
  constructor(props) {
    super(props);
    this.state = { 
      value: '', 
      description: '', 
      succefully: '' ,
      color: ''
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(event) {
    let params = {
      'title': this.state.value,
      'description': this.state.description
    }
    
    new AxiosWrapper.post('/v1/account/class_rooms', params).then((response) => {
      this.setState({succefully: `Успішно створено класс рум: ${this.state.value}`, value: '', description: '', color: 'green'})
      this.props.history.replace('/class_rooms');
    }).catch((response) => {
      this.setState({
        succefully: 'Щось пішло не так. Статус код: ' + response.request.status,
        color: 'red'
      })
    })
    event.preventDefault();
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <div style={{color: 'white', backgroundColor: 'green'}}>
          <strong><em>{this.state.succefully}</em></strong>
        </div>
        <label>
          Name:
          <input type="text" value={this.state.value} onChange={(e) => this.setState({value: e.target.value})} style={{borderColor: this.state.color}}/>
          <br/>
          Description:
          <input type="text" value={this.state.description} onChange={(e) => this.setState({description: e.target.value})} style={{borderColor: this.state.color}} />
        </label>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}

export default CreateClassRoom;
