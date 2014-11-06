index = (req, res) ->
  console.log "serving calender"
  res.render "layout/index",
    title: "FlatOrganize"
    partials:
      navbar: "layout/navbar"
      content: "sites/calender/index"

  return
init = (app) ->
  app.get "/calender", index
  return
express = require("express")
module.exports = init
