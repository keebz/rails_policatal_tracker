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

end