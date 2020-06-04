class ManualsController < ApplicationController
	before_action :authenticate_user!, only: [:new]

	def index
		@manuals = Manual.all
	end

	def search
		@manuals = Manual.search(params[:search])
	end

	def show
		@manual = Manual.find(params[:id])
	end

	def new
	end

	def create
		@manual = Manual.new(manual_params)

		@manual.save
		redirect_to @manual
	end

	private def manual_params
		params.require(:manual).permit(:tipo, :marca, :codigo, :modelo, :path, :search)
	end
end
