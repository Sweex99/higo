module V1
  module Account
    class OrganizationsController < AccountController
      before_action :set_organization, only: %i[show update destroy]
      def index
        @organizations = Organization.all

        render json: @organizations
      end

      def show
        render json: @organization
      end

      def create
        @organization = Organization.new(organization_params)
        if @organization.save
          render json: @organization, status: :created
        else
          render json: @organization.errors, status: :unprocessable_entity
        end
      end

      def update
        if @organization.update(organization_params)
          render json: :show, status: :ok
        else
          render json: @organization.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @organization.destroy if @organization.present?
      end

      private

      def organization_params
        params.permit(:id, :title, :description)
      end

      def set_organization
        @organization = Organization.find(params[:id])
      end
    end
  end
end
