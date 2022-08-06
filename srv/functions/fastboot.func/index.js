const FastBoot = require('fastboot');

module.exports = async (req, res) => {
  let app = new FastBoot({ distPath: './dist/dist' });

  console.log('--------------------');
  console.log(`req.url`, req.url);
  console.log(`req.path`, req.path);
  console.log('--------------------');

  const result = await app.visit(req.url);
  const html = await result.html();
  res.send(html);
};
