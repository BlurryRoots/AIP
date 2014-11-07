index = (req, res) ->
	res.send "Hello, this is a test."
	return

init = (app) ->
  app.get "/", index
  return

module.exports = init
