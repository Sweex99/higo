module Account
  class ClassRoomsController < AccountController

    skip_before_action :authenticate_user!
    skip_before_action :save_user_name_in_session

    def index

      class_rooms = resource

      render json: ClassRoomSerializer.new(class_rooms).serializable_hash
    end

    def show
      params_id = params[:id].to_i
      class_room = resource.find(params_id)

      binding.pry
      render json: ClassRoomSerializer.new(class_room).serializable_hash
    end

    def create
      @class_room = ClassRoom.new(class_room_params)

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
      User.third.class_rooms
    end
  end
end