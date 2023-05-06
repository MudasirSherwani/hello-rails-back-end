class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.order('RANDOM()').limit(1).first
    render json: @greetings
  end
end
