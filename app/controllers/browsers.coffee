
Spine   = require( 'spine' )
ORM     = require( 'orm' )
view    = require( 'views/browser' )

class Supports extends Spine.Controller

    @include ORM.state

    constructor: ->
        super
        @view = view
        @html @view

    el: '#browsers'

module.exports = Supports
