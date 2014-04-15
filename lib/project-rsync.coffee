ProjectRsyncView = require './project-rsync-view'

module.exports =
  projectRsyncView: null

  activate: (state) ->
    @projectRsyncView = new ProjectRsyncView(state.projectRsyncViewState)

  deactivate: ->
    @projectRsyncView.destroy()

  serialize: ->
    projectRsyncViewState: @projectRsyncView.serialize()
