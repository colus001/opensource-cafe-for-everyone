@Util =
  slugify: (text, options) ->
    options = _.defaults(options or {},
      decode: true
    )
    return null unless text

    text = unidecode(text) if options.decode
    text.toLowerCase()
      .replace(/\s+/g, '-')       # Replace spaces with -
      .replace(/[^\w\-]+/g, '')   # Remove all non-word chars
      .replace(/\-\-+/g, '-')     # Replace multiple - with single -
      .replace(/^-+/, '')         # Trim - from start of text
      .replace(/-+$/, '')

  makeShortId: (len) ->
    (new Meteor.Collection.ObjectID())._str.substring(0, len)
