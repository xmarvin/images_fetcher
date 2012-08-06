# ImagesFetcher

It's a small ruby gem for showing popup with images from selected url

## Installation

Add this line to your application's Gemfile:

	gem 'jquery-rails'
	gem 'jquery-ui-rails'
	gem "bootstrap-sass", ">= 2.0.1"
	gem 'haml'

    gem 'images_fetcher', :git => 'git://github.com/spy-a/images_fetcher.git'

Add this to your assets/javascripts/application.js file

	//= require jquery.ui.all
	//= require bootstrap
	//= require images_fetcher

Add this to your assets/stylesheets/application.js file

    *= require jquery.ui.all
    *= require images_fetcher

And then execute:

    $ bundle

## Usage

Use helper method init_images_fetcher(link, image_link_input, image_preview='') to initialize images_fetcher functionality

For  example:

 &lt;input type=text id=&quot;book_link&quot;&gt;  &lt;-- input url with images here<br/>
  &lt;input type=text id=&quot;card_remote_image_url&quot;&gt;  &lt;- you get link to image to this field after close popup with images<br/>
  &lt;img id=&quot;remote_image_preview&quot; /&gt; &lt;- optionally,  display here selected image<br/>
  &lt;%= init_images_fetcher('#book_link', '#card_remote_image_url', '#remote_image_preview') %&gt;<br/>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
