require 'pry'
class LandmarksController < ApplicationController


	get '/landmarks' do
		@landmarks = Landmark.all
		erb :'landmarks/index'
	end

	get '/landmarks/new' do
  	 	erb :'landmarks/new'
  	end

	 get '/landmarks/:id' do
    	@landmark = Landmark.find_by_id(params[:id])
    	erb :'landmarks/show'
  	 end

  	 

  	 post '/landmarks' do
  	 	@landmark = Landmark.new(params[:landmark])
 	    @landmark.name = params["landmark[name]"]
 	    @landmark.year_completed = params["landmark[year_completed]"]
 	    @landmark.save
		redirect to "/landmarks/#{@landmark.id}"
  	 end

  	 get '/landmarks/:id/edit' do
  	 	@landmark = Landmark.find_by_id(params[:id])
  	 	erb :'landmarks/edit'
  	 end

  	 patch '/landmarks/:id' do
  	 	
  	   @landmark = Landmark.find_by_id(params[:id])
	 	
 	   @landmark.update(params[:landmark])
 	   @landmark.year_completed = params[:landmark][:year_completed].to_i

 	   # @landmark.name = params["landmark[name]"]
 	   # @landmark.year_completed = params["landmark[year_completed]"]

 	   @landmark.save
	  
	   redirect to "/landmarks/#{@landmark.id}"
	 end
end
