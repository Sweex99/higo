module V1
  module Account
    class AccountController < ApplicationController
      layout 'account'

      before_action :authenticate_user!
      before_action :save_user_name_in_session

      rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

      respond_to :json

      private

      def save_user_name_in_session
        if current_user
          cookies[:email] = current_user.email
        else
          render json: { 'text' => 'current User name' }
        end
      end

      def record_not_found
        render json: { text: 'Record Not Found' }
      end
    end
  end
end