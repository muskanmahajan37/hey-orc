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

  def search_results
    query_str = (params[:query_str].blank?) ? '*' : params[:query_str]
    @name = "Search results for '#{query_str}'"
    @locations = Location.search_results(query_str)
  end

  private
    def generate_primary_key
      params[:location][:name].downcase.tr(': ', '_')
    end

    def attributes
      params[:location].merge(:id => generate_primary_key)
    end
end
