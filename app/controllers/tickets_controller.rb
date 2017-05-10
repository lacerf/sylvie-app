class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show]
	def index
	end

	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.new(ticket_params)
		@ticket.user_id = current_user.id

		if @ticket.save
			redirect_to @ticket, notice: 'Your ticket was created successfully'
		else
			render :new
		end
	end

	def show
	end

	private

	  def ticket_params
	  	params.require(:ticket).permit(:title, :details, :start_date)
	  end

	  def set_ticket
	  	@ticket = Ticket.find(params[:id])
	  end
end
