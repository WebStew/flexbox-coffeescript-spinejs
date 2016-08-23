
Spine   = require( 'spine' )
ORM     = require( 'orm' )
view    = require( 'views/introduction' )

class Introductions extends Spine.Controller

    @include ORM.state

    constructor: ->
        super
        @view = view
        @html @view

    el: '#introduction'

module.exports = Introductions
