const path  = require('path')
const Core  = require(path.dirname(require.main.filename) + '/System/Core/Core')
const Koa   = require('koa');

const app   = new Koa();

class index extends Core{
  constructor() {
    app.use(async ctx => {
      ctx.body = 'Hello World';
    });
    app.listen(81);
  }
}

new index();
