class MeetupController < ApplicationController
  def index
  	@user = current_user
  	@meetup = Meetup.new
  end
  def new
  	
  end
  def create
	 @meetup = current_user.meetup.new.build(meetup_params)
	 if @meetup.save!
	 	redirect_to @meetup
	 else
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
