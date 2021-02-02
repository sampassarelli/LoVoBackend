class Api::V1::DestinationsController < ApplicationController
  def index
      destinations = Destination.all
      render json: destinations
  end

  def show
      destination = Destination.find_by_id(params[:id])
      render json: destination
  end

  def create
      destination = Destination.new(destination_params)
      if destination.save 
          render json: destination
      else 
          render json: {error: destination.errors.full_messages}
      end
  end

  def update
      destination = Destination.find_by_id(params[:id])
      if destination.update(destination_params)
          render json: destination
      else 
          render json: {error: destination.errors.full_messages}
      end
  end

  def destroy
      destination = Destination.find_by_id(params[:id])
      if destination.destroy
          render json: destination
      else
          render json: {error: "Something went wrong, cannot delete destination."}
      end
  end


  private

  def destination_params
      params.require(:destination).permit(:name, :date_visited, :address, :category, :comment, :visited, :cost, :attendees, :user_id, :latitude, :longitude)
  end
end
