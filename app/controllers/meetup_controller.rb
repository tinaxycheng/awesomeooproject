class MeetupController < ApplicationController
  def index
 
   @meetup = Meetup.new
   @meetups= Meetup.all.order('created_at DESC')
  end
  def new
  	
  end
  def create
    @meetup = Meetup.new
    if @meetup.save!
      redirect_to meetup_path(@meetup)
    else
      flash.now[:error] = @meetup.errors.messages.first.join(" ")
      render 'new'
	 
	 
	 end
  end
  def show
  	@meetup = Meetup.find(params[:id])
  end


	# def join(other_user)
	#    @user=current_user
	#     attendings.create(attendants_id: meetup_id)
	#    @user.active_relationship.create(@meet-up)
	#   end

	#   def leave(other_user)
	#    attendings.find_by(attendants_id: meetup_id).destroy
	#  end

	# def show
	# 	#show the attendants of the meet-up
	# 	@meetup.attendants_id.name

	# 	#show the organizer of the meet-up
	# 	user.find_by(meetup.organizer_id).name

	# 	#show the meet-up one user attend:
	# 	Meetup.find_by(User.attendings.meetup_id).title

	# 	#show the ones that the user organize :
	# 	meetup.organizer_id.find(user_id)

	# 	#show the ones that based on location
	# 	meetup.location.find(@location)


end
