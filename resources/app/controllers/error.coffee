e404 = (app, data) ->
  data.partials.content += "404"
  data.message = "Unfortunatly, this page does not exist ;("
  data
eMisc = (app, data) ->
  data.partials.content += "500"
  data.message = err.message
  data.err = err  if app.get("env") is "development"
  data
init = (app) ->
  
  #/ catch 404 and forward to error handler
  app.use (req, res, next) ->
    err = new Error("Not Found")
    err.status = 404
    next err
    return

  
  #/ error handlers
  app.use (err, req, res, next) ->
    scode = err.status or 500
    res.status scode
    data =
      title: "FlatOrganize"
      partials:
        navbar: "layout/navbar"
        content: "error/"

    switch scode
      when 404
        data = e404(app, data)
      else
        data = eMisc(app, data)
    res.render "layout/index", data
    return

  return
module.exports = init
