const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

environment.loaders.get('sass').use.splice(-1, 0, {
    loader: 'resolve-url-loader',
    options: {
        attempts: 1
    }
});

environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']

}))

const aliasConfig = {
    'jquery': 'jquery/dist/jquery.js',
};

environment.config.set('resolve.alias', aliasConfig);

module.exports = environment
