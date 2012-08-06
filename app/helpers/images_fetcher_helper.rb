module ImagesFetcherHelper
  
  def init_images_fetcher(link, image_link_input, image_preview='')
  	render('shared/choose_image') + 
  	render('shared/js', {link: link, image_link_input:image_link_input, image_preview:image_preview})
  end	

end