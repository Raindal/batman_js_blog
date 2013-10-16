class BatmanJsBlog.Comment extends Batman.Model
  @resourceName: 'comments'
  @storageKey: 'comments'

  @persist Batman.RailsStorage

  # Looks familiar...
  @belongsTo 'post'

  # Pretty much straightforward but we have to specify it
  @urlNestsUnder 'post'

  @encode 'content', 'post_id'
  @encodeTimestamps()

