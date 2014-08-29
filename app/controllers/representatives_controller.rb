class RepresentativesController < ApplicationController

	def index
		@representatives = Representative.all
		render('representatives/index.html.erb')
	end
end