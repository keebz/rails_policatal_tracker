class RepresentativesController < ApplicationController

	def index
		@representatives = Representative.all
		render('representatives/index.html.erb')
	end

	def new
		render('representatives/new.html.erb')
	end

	# def create
	# end
	
end