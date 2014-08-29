class RepresentativesController < ApplicationController

	def index
		@representatives = Representative.all
		render('representatives/index.html.erb')
	end

	def new
		@representative = Representative.new
		render('representatives/new.html.erb')
	end

	def create
		@representative = Representative.new(params[:representative])
	    if @representative.save
	      flash[:notice] = "You added a new representative!"
	      redirect_to('/representatives')
	    else
	      flash[:notice] = "Something went wrong. Try again."
	      render('representatives/new.html.erb')
	    end
	end

	def edit
		@representative = Representative.find(params[:id])
		render("representatives/edit.html.erb")
	end

	def show
		@representative = Representative.find(params[:id])
    	render('representatives/show.html.erb')
	end

	def update
		@representative = Representative.find(params[:id])
	    if @representative.update(params[:representative])
	      flash[:notice] = "Representative updated."
	      redirect_to('/representatives')
	    else
	      flash[:notice] = "Something went wrong. Try again."
	      render('representatives/edit.html.erb')
	    end
	end

	def destroy
		@representative = Representative.find(params[:id])
		@representative.destroy
		redirect_to('/representatives')
	end

end