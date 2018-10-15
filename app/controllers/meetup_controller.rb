class MeetupController < ApplicationController
  
  def index
   @meetup = Meetup.new
   @meetups= Meetup.all.order('created_at DESC')
  end

  def new
  	@meetup = Meetup.new
  end

  def create
    @meetup = current_user.meetups.build meetup_params
    if @meetup.save!
      redirect_to meetup_path(@meetup)
    else
      flash.now[:error] = @meetup.errors.messages.first.join(" ")
      render 'new'
	 end
  end

  def meetup_params
    params.require(:meetup).permit(:title, :description, :formatted_address, :time)
  end

  def update
    @meetup = Meetup.find(params[:id])
    if @meetup.update_attributes(meetup_params)
      redirect_to meetup_path(@meetup)
    else
      flash.now[:error] = @meetup.errors.messages.first.join(" ")
      render 'edit'
    end
  end


  def edit
    @meetup = Meetup.find(params[:id])
  end

  def destroy
    @meetup = Meetup.find(params[:id])
    @meetup.destroy
    redirect_to meetup_index_path
  end


  def show
  	@meetup = Meetup.find(params[:id])
  end



end
