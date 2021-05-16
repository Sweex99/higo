module Account
  class MarksController < AccountController
    def index
      @marks = recources

      render json: @marks
    end

    def show
      @mark = current_user.class_room_marks

      render json: @mark
    end

    private

    def recources
      current_user.marks
    end
  end
end