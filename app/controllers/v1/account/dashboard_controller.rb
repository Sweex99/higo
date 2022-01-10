module V1
  module Account
    class DashboardController < AccountController
      def index
        render json: { 'text' => 'asd' }
      end
    end
  end
end