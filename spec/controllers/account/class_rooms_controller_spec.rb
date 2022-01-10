require 'rails_helper'

RSpec.describe V1::Account::ClassRoomsController, type: :controller do
  let(:user) { create :user }
  
  before do
    sign_in(user)
  end

  describe 'GET #index' do
    it 'return list of class rooms for user' do
      get :index

      json_response = JSON.parse(response.body)

      expect(json_response).to eql []
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