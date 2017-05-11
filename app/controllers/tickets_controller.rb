class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
	def index
		@tickets = Ticket.all
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
	
	def edit
		#authorize @ticket
	end

	def update
		#authorize @ticket
		
		if @ticket.update(ticket_params)
			redirect_to @ticket, notice: 'Your ticket was edited successfully'
		else
			render :edit
		end
	end

	def show
	end
	
	def destroy
		@ticket.delete
		redirect_to tickets_path, notice: 'Your ticket was deleted successfully'
	end

	private

	  def ticket_params
	  	params.require(:ticket).permit(:title, :details, :start_date)
	  end

	  def set_ticket
	  	@ticket = Ticket.find(params[:id])
	  end
end
