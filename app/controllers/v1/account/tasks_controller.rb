
module V1
  module Account
    class TasksController < AccountController
      def index
        @tasks = resources

        render json: TaskSerializer.new(@tasks).serializable_hash
      end

      def show
        @task = resources.find(params[:id])
      end

      def create
      end

      def update
      end

      private

      def resources
        current_user.tasks
      end
    end
  end
end