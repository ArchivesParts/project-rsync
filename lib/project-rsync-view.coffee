{View} = require 'atom'

module.exports =
class ProjectRsyncView extends View
  @content: ->
    @div class: 'project-rsync overlay from-top', =>
      @div "The ProjectRsync package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "project-rsync:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "ProjectRsyncView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
