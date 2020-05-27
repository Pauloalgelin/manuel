class ManualsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :about]

	def index
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
		# render plain: params[:manual].inspect
	end

	private def manual_params
		params.require(:manual).permit(:tipo, :marca, :codigo, :modelo, :path)
	end
end
