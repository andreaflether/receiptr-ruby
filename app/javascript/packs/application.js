import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'

global.$ = require('jquery')
require('slick-carousel')

import 'slick-carousel/slick/slick.scss'
import 'slick-carousel/slick/slick-theme.scss'

import slick_settings from './slick_settings'

Rails.start()
Turbolinks.start()

$(document).on('turbolinks:load', function() {
  $('.carousel').slick({
    ...slick_settings
  })
})