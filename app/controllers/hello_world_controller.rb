class HelloWorldController < ApplicationController
  layout "account"

  def index
    @hello_world_props = { name: "Stranger" }
  end
end
