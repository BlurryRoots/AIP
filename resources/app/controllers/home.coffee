index = (req, res) ->
  res.render "layout/index",
    title: "FlatOrganize"
    partials:
      navbar: "layout/navbar"
      content: "sites/home/index"

    h: "FlatOrganize"
    sub: "WG-Planung einfach gemacht."

  return
init = (app) ->
  app.get "/", index
  return
express = require("express")
module.exports = init
