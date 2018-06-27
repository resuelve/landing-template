const { Builder, Server } = require('@resuelve/lego-landing')

switch (process.argv[2].toLowerCase()) {
  case 'build':
    Builder()
    break
  default:
    Server()
}
