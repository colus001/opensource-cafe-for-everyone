@Boards = new Mongo.Collection('boards')

Boards.allow(
  insert: (userId, board) ->
    board.createdBy = Meteor.userId()
    true
  update: (userId, board, fields, modifier) ->
    true
  remove: (userId, board) ->
    true
)
