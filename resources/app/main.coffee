express      = require("express")
path         = require("path")
logger       = require("morgan")
bodyParser   = require("body-parser")
cookieParser = require("cookie-parser")

app = express()
app.use logger("dev")
app.use bodyParser.json()
app.use bodyParser.urlencoded()
app.use cookieParser()
app.use express.static(path.join(__dirname, "public"))

[
  "controllers/calendar"
  "controllers/dashboard"
  "controllers/home"
].forEach (routerPath) ->
  require(routerPath) app
  return

module.exports = app

