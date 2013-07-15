#= require jPlayer/jquery.jplayer.min

$ ->
  $('.jp-jplayer').jPlayer
    ready: (event) ->
      $(@).jPlayer 'setMedia',
        mp3: 'https://s3.amazonaws.com/gaslight-podcasts/gaslight-podcast-019.mp3'
    swfPath: '/assets/jPlayer/'
    supplied: 'mp3'
    wmode: 'window'
    smoothPlayBar: true
    keyEnabled: true
