class BatmanJsBlog.Post extends Batman.Model
  @resourceName: 'posts'
  @storageKey: 'posts'

  # We are using Batman.js with Ruby on Rails...
  @persist Batman.RailsStorage

  @hasMany 'comments'

  # Use @encode to tell batman.js which properties Rails will send back with its JSON.
  @encode 'title', 'content'
  @encodeTimestamps()

  @validate "title",   presence: true
  @validate "content", presence: true

