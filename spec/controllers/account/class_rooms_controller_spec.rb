require 'rails_helper'

RSpec.describe Account::ClassRoomsController, type: :controller do
  before do
    sign_in(User.first)
  end

  describe 'GET #index' do
    it 'return list of class rooms for user' do
      get :index

      json_response = JSON.parse(response.body)
      json_response['data'].each do |class_room|
        expect(class_room['type']).to eql('class_room')
      end
    end
  end

  describe 'GET #show' do
    it 'return text with error like RecordNotFound' do
      get :show, params: { id: 111111 }

      json_response = JSON.parse(response.body)
      expect(json_response['text']).to eql('Record Not Found')
    end

    it 'return class room for current user' do
      get :show, params: { id: 4 }

      expect(response).to have_http_status(:success)
    end
  end
end