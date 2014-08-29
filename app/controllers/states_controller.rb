class StatesController < ApplicationController

	def index
		@states = State.all
		@state = State.new(params[:state])
		render('states/index.html.erb')
	end

	def new
		@state = State.new
		render('states/index.html.erb')
	end

	def create
		@state = State.new(params[:state])
	    if @state.save
	      flash[:notice] = "You added a new state!"
	      redirect_to('/states')
	    else
	      flash[:notice] = "You Didn't Enter A State! Try again."
	      redirect_to('/states')
	    end
	end

	def destroy
		@state = State.find(params[:id])
		@state.destroy
		redirect_to('/states')
	end

end