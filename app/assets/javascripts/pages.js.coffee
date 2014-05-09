$(document).ready ->
  $(".hover").hover (->
    $(this).addClass "flip"
    return
  ), ->
    $(this).removeClass "flip"
    return

  $(".word h4:gt(0)").hide()
  setInterval (->
    $(".word h4:first").fadeOut().next("h4").fadeIn().end().appendTo ".word"
    return
  ), 2000
  $(".media-video").hide()
  $(".playpausebtn").click ->
    $(".media-video").fadeIn 1000
    $(".container").hide 100
    return

  $(".dp1").click ->
    $(".content1").fadeIn 1000
    $(".content2, .content3").hide 1000
    return

  $(".dp2").click ->
    $(".content2").fadeIn 1000
    $(".content1, .content3").hide 1000
    return

  $(".dp3").click ->
    $(".content3").fadeIn 1000
    $(".content1, .content2").hide 1000
    return
  return
