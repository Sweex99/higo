require 'rails_helper'

RSpec.describe V1::Account::OrganizationsController, type: :controller do
  let!(:user) { create :user }
  let!(:organizations) { create :organization }
  
  before do
    sign_in(user)
  end

  describe 'GET #index' do
    before { get :index, format: :json }

    it { is_expected.to respond_with :success }
  end

  describe 'POST#create' do
    subject { post :create, format: :json }
    it 'creates a new organization' do
      expect { subject }.to change(Organization, :count).by(+1)
    end
    it { is_expected.to have_http_status(:success) }
  end

  describe 'PUT#update' do
    before do
      put :update, format: :json, params: { id: organizations.id,
                                            title: 'Example',
                                            description: 'Lorem'
                                          }
    end

    it { is_expected.to respond_with :success }

    it 'assigns the organization' do
      expect(assigns(:organization)).to match(organizations)
    end
  end

  describe 'DELETE#destroy' do
    it 'destroys the organization' do
      expect { delete :destroy, params: { id: organizations.id } }
        .to change(Organization, :count).by(-1)
    end
  end
end