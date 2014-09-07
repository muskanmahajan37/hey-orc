class LocationsController < ApplicationController

  def index
   @locations = Location.all
  end

  def show
    @location = Location.find params[:id]
    @comments = @location.comments
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create! attributes
    redirect_to :action => 'show', :id => @location.id
  end

  private
    def generate_primary_key
      params[:location][:name].downcase.tr(': ', '_')
    end

    def attributes
      params[:location].merge(:id => generate_primary_key)
    end
end
