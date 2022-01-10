require 'rails_helper'

RSpec.describe V1::Account::TasksController, type: :controller do
  let(:user) { create :user }
  
  before do
    sign_in(user)
  end

  describe 'GET #index' do
    it 'return user`s tasks' do
      get :index
      json_response = JSON.parse(response.body)
      json_response['data'].each do |class_room|
        expect(class_room['type']).to eql('task')
      end
    end
  end

  describe 'GET #show' do
    it 'return text with error like RecordNotFound' do
      get :show, params: { id: 11111111 }

      json_response = JSON.parse(response.body)
      expect(json_response['text']).to eql('Record Not Found')
    end

    it 'return task for current user' do
      get :show, params: { id: 4 }

      expect(response).to have_http_status(:success)
    end
  end
end