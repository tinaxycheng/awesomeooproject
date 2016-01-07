module ApplicationHelper
	def randomized_background_image
  images = ["assets/homepage1.jpg", "assets/homepage2.jpg", "assets/homepage3.jpg"]
  images[rand(images.size)]
end
end
