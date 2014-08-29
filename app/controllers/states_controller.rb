class StatesController < ApplicationController

	def index
		@states = State.all
		render('states/index.html.erb')
	end

	def new
		@state = State.new
		render('states/new.html.erb')
	end

	def create
		@state = State.new(params[:state])
	    if @state.save
	      flash[:notice] = "You added a new state!"
	      redirect_to('/states')
	    else
	      flash[:notice] = "Something went wrong. Try again."
	      render('states/new.html.erb')
	    end
	end

	def edit
		@state = State.find(params[:id])
		render("states/edit.html.erb")
	end

	def show
		@state = State.find(params[:id])
    	render('states/show.html.erb')
	end

	def update
		@state = State.find(params[:id])
	    if @state.update(params[:state])
	      flash[:notice] = "State updated."
	      redirect_to('/states')
	    else
	      flash[:notice] = "Something went wrong. Try again."
	      render('states/edit.html.erb')
	    end
	end

	def destroy
		@state = State.find(params[:id])
		@state.destroy
		redirect_to('/states')
	end

end