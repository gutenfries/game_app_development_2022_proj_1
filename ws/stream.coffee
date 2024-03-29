###
SPDX-License-Identifier: MIT
Author: Mark Gutenberger <mark-gutenberger@outlook.com>
stream.coffee (c) 2022
Desc: description
Created:  2022-03-04T14:13:06.709Z
Modified: 2022-03-11T00:28:36.263Z
###
STREAM = (socket) => ->
	socket.on(
		'subscribe'
		(data) => ->
		# subscribe/join a room
		socket.join(data.room).join data.socketId
		#endfunc
	)
	socket.on 'newUserStart', ((data) => ->), socket.to(data.to).emit 'newUserStart', sender: data.sender
	socket.on 'sdp', ((data) => ->), socket.to(data.to).emit 'sdp', description: data.description, sender: data.sender
	socket.on(
		'ice candidates'
		(data) => ->
		socket.to(data.to).emit 'ice candidates', candidate: data.candidate, sender: data.sender
		#endfunc
	)
	socket.on 'chat', ((data) =>), socket.to(data.room).emit 'chat', sender: data.sender, msg: data.msg
#endfunc
module.exports = STREAM
