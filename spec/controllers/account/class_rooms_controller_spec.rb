require 'rails_helper'

RSpec.describe Account::ClassRoomsController, type: :controller do
  before do
    sign_in(User.third)
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
      get :show, params: { id: 1445 }

      json_response = JSON.parse(response.body)
      expect(json_response['text']).to eql('Record Not Found')
    end

    it 'return class room for current user' do
      class_room = create(:class_room)
      get :show, params: { id: class_room.id }

      expect(response).to have_http_status(:success)
    end
  end
end