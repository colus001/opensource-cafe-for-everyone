Package.describe({
  name: 'unidecode',
  version: '0.1.0',
  // Brief, one-line summary of the package.
  summary: '',
  // URL to the Git repository containing the source code for this package.
  git: '',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Npm.depends({
  'unidecode': '0.1.7'
})

Package.onUse(function(api) {
  api.use(['cosmos:browserify@0.2.0'], 'client')
  api.addFiles(['client.browserify.js'], 'client');
  api.export('Unidecode', 'client');
});
