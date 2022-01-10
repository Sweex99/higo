module V1
  module Account
    class ClassRoomsController < AccountController
      def index
        class_rooms = resource

        render json: class_rooms.to_json
      end

      def show
        params_id = params[:id].to_i
        class_room = resource.find(params_id)

        render json: ClassRoomSerializer.new(class_room).serializable_hash
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

      private

      def class_room_params
        params.require(:class_room).permit(:id, :title, :description)
      end

      def resource
        current_user.class_rooms
      end
    end
  end
end