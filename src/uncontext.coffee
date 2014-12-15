# Description
#   A hubot script that takes advantage of uncontext (http://uncontext.com) random streams.
#
# Configuration:
#   websocket
#
# Commands:
#   random - Sends back a random stream of numbers.
#
# Notes:
#   This module uses web sockets.
#
# Author:
#   robksawyer[@<org>]

WebSocketClient = require('websocket').client
client = new WebSocketClient()

module.exports = (robot) ->

  robot.hear /random/, ->
    socket = client.connect 'ws://duel.uncontext.com:80'
    socket.on 'connect', (data) ->
      msg.send data
