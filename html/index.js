const Koa = require('koa');
const app = new Koa();

class index {
  constructor() {
    app.use(async ctx => {
      ctx.body = 'Hello World';
    });
    app.listen(81);
  }
}

new index();
