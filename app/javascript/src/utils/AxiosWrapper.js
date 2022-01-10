import axios from 'axios'

const csrf_token = document.querySelector('[name="csrf-token"]') || {content: 'no-csrf-token'}

const AxiosWrapper = axios.create({
  headers: {
    common: {
      'X-CSRF-Token': csrf_token.content
    }
  }
})

export default AxiosWrapper;
