##!/usr/bin/env node
debug = require("debug")("flatorganize")
app   = require("./app/main")

app.set "port", process.env.PORT or 3000

server = app.listen app.get("port"), () ->
	debug "Express server listening on port " + server.address().port
	return

