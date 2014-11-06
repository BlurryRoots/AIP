path     = require 'path'
rootPath = path.normalize __dirname + '/..'
env      = process.env.NODE_ENV || 'development'

config =
  development:
    root: rootPath
    app:
      name: 'aip-coffee'
    port: 3000
    db: 'postgres://localhost/aip-coffee-development'
    

  test:
    root: rootPath
    app:
      name: 'aip-coffee'
    port: 3000
    db: 'postgres://localhost/aip-coffee-test'
    

  production:
    root: rootPath
    app:
      name: 'aip-coffee'
    port: 3000
    db: 'postgres://localhost/aip-coffee-production'
    

module.exports = config[env]
