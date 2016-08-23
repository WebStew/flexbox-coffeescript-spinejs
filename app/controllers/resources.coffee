
Spine   = require( 'spine' )
ORM     = require( 'orm' )
view    = require( 'views/resource' )

class Resources extends Spine.Controller

    @include ORM.state

    constructor: ->
        super
        @view = view
        @html @view

    el: '#resources'

module.exports = Resources
