const path = require('path');
var SRC = path.resolve(__dirname, 'frontend/assets');

module.exports = {
  entry: './frontend/amppad.jsx',
  output: {
    path: path.resolve(__dirname, 'app', 'assets', 'javascripts'),
    filename: 'bundle.js'
  },
  module: {
    rules: [
      {
        test: [/\.jsx?$/],
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: {
          presets: ['@babel/env', '@babel/react']
        }
      },
      {
        test: /\.css$/, use: 'css-loader'
      },
      {
        include: SRC,
        test: /\.(eot|gif|otf|png|svg|ttf|woff|jpg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        use: [ 'file-loader' ],
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['.js', '.jsx', '*'],
  }
};
