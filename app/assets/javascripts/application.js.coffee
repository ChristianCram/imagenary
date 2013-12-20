#= require jquery
#= require jquery_ujs
#= require nprogress
#= require nprogress-turbolinks
#= require turbolinks
#= require twitter/bootstrap
#= require_tree .

class Imagenary
  start: ->
    $('#photos').masonry
#      columnWidth:  230
      gutter: 0
      columnWidth:  '.item'
      itemSelector: '.item'

    @users = new Users($('#users_auth_form'))
    @photos = new Photos($('#create_photos_form'))

$(document).on 'page:load', ->
  @app = new Imagenary
  @app.start()
$(document).ready ->
  @app = new Imagenary
  @app.start()