window.ImagesFetcher = ImagesFetcher =
  init: (wbs, ids,rip)->
    web_link_selector = wbs
    image_destination_selector = ids
    remote_image_preview_selector = rip

    cur = 0
    count = 0
    images =[]
    context = $('#choose_image')
    $(web_link_selector).change (e) ->
      fetch(this)

    $(image_destination_selector).change (e) ->
      $(remote_image_preview_selector).attr 'src', $(this).val()

    $('#prev_image').click (e) ->
      if cur > 0
        cur--
        set_image(cur)
      false
    $('#next_image').click (e) ->
      if cur < count-1
        cur++
        set_image(cur)
      false

    fetch = (link)->
      url = $(link).val()
      $.ajax '/fetch',
        type: 'GET'
        data:
          url: url
        dataType: 'html'
        error: (jqXHR, textStatus, errorThrown) ->
        success: (data, textStatus, jqXHR) ->
          images = $('img', data).map ->
            $(this).attr('src')
          .filter ->
            this.match(/^http.*(jpg|png)/) != null
          cur = 0
          count = images.length
          if count > 0
            context.find('.count').text(count);
            set_image(0)
            if count > 1
              $('#choose_image').modal
                backdrop : true
                keyboard : true
                show     : false
                .css
                'margin-left' : ->
                  -($(@).width() / 2)

    set_image = (i) ->
      context.find('.current').text(i+1);
      link = images[i]
      $(context).find('#image').attr 'src', link
      $(image_destination_selector).val(link).change()



