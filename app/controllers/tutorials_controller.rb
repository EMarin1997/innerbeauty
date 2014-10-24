class TutorialsController < ApplicationController
	def index
		@tutorials = Tutorial.all
	end

	def new
	end

	def create
		@tutorial = Tutorial.new(tutorial_params)

		@tutorial.save
		redirect_to @tutorial
	end

	def show
		@tutorial = Tutorial.find(params[:id])
	end

	def edit
	end

	private
		def tutorial_params
			params.require(:tutorial).permit(:title, :time, :description)
		end
end
