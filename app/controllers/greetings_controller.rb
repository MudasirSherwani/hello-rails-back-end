class GreetingsController < ApplicationController
  def index
    @greeting = Greeting.order('RANDOM()').first
    if @greeting
      render json: { greeting: @greeting }, status: :ok
    else
      render json: { success: false, errors: 'Oops, Something went wrong!' }, status: :unprocessable_entity
    end
  end
end
