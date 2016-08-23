
Spine   = require( 'spine' )
ORM     = require( 'orm' )
view    = require( 'views/basic' )

class Basics extends Spine.Controller

    @include ORM.state
    @include ORM.tabulate

    constructor: ->
        super
        @view = view
        @html @view

        @tabulate()

    el: '#basics'

module.exports = Basics
