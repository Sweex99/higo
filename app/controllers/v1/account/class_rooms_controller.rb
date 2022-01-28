module V1
  module Account
    class ClassRoomsController < AccountController
      before_action :set_class_room, only: %i[show update destroy]
      def index
        @class_rooms = resource

        render json: @class_rooms.to_json
      end

      def show
        render json: @class_room
      end

      def create
        @class_room = ClassRoom.new(class_room_params)
        @class_room.author = current_user
        
        if resource << @class_room
          render json: @class_room
        else
          render json: @class_room.errors
        end
      end

      def update
        ClassRoom.update(class_room_params)

        render status: :no_content
      end

      def destroy
        @class_room.destroy if @class_room.present?
      end

      private

      def class_room_params
        params.require(:class_room).permit(:id, :title, :description)
      end

      def set_class_room
        @class_room = ClassRoom.find(params[:id])
      end

      def resource
        current_user.class_rooms
      end
    end
  end
end