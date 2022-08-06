const FastBoot = require('fastboot');

module.exports = async (req, res) => {
  console.log('--------------------');
  console.log('CWD', process.cwd());
  console.log('--------------------');

  let app = new FastBoot({ distPath: 'dist' });

  console.log('--------------------');
  console.log(`req.url`, req.url);
  console.log(`req.path`, req.path);
  console.log('--------------------');

  const result = await app.visit(req.url);
  const html = await result.html();
  res.send(html);
};
