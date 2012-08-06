# -*- encoding: utf-8 -*-
require File.expand_path('../lib/images_fetcher/version', __FILE__)
require File.expand_path('../app/helpers/images_fetcher_helper', __FILE__)
Gem::Specification.new do |gem|
  gem.authors       = ["Alexey Kisel"]
  gem.email         = ["aki@jetthoughts.com"]
  gem.description   = "It's a small ruby gem for showing popup with images from selected url"
  gem.summary       = "It's a small ruby gem for showing popup with images from selected url"
  gem.homepage      = "https://github.com/spy-a/images_fetcher"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "images_fetcher"
  gem.require_paths = ["lib", "app"]
  gem.version       = ImagesFetcher::VERSION
 
  gem.add_dependency 'jquery-rails'
  gem.add_dependency 'jquery-ui-rails'
  gem.add_dependency "bootstrap-sass", ">= 2.0.1" 
  gem.add_dependency 'haml'
end
