require "images_fetcher/version"
module ImagesFetcher
  
  class Railtie < Rails::Railtie
    initializer "images_fetcher.images_fetcher_helper" do
      ActionView::Base.send :include, ImagesFetcherHelper
    end
  end

  class Engine < ::Rails::Engine

    isolate_namespace ImagesFetcher

  end
end
