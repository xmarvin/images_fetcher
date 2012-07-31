class RequestsController <  ActionController::Base

  def fetch
    url = params['url'] || ''
    uri = URI(url)
    render :text => Net::HTTP.get(uri)
  end

end