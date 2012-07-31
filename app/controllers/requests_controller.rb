class RequestsController <  ActionController::Base

  caches_action :fetch

  def fetch
    url = params['url'] || ''
    uri = URI(url)
    render :text => Net::HTTP.get(uri)
  end

end
