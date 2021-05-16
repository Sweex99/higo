class ClassRoomSerializer
  include JSONAPI::Serializer

  attributes :title, :description

  attribute :tasks do |t|
    TaskSerializer.new(t.tasks).as_json['data']
  end

  attribute :users do |u|
    UserSerializer.new(u.users).as_json['data']
  end


end