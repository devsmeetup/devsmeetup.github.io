const { resolve } = require('path');
const readConfig = require('read-config');

module.exports = {
  locals: {
    // Get site data from YAML
    ...readConfig(resolve(__dirname, 'src/data.yml')),
  },
};
