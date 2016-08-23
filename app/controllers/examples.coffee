
Spine   = require( 'spine' )
ORM     = require( 'orm' )
view    = require( 'views/example' )

class Examples extends Spine.Controller

    @include ORM.state

    constructor: ->
        super
        @view = view
        @html @view

    el: '#examples'

    events:
        'change select' : 'setDeclaration'

    elements:
        '.flex'             : 'parent'
        '.flex-box-child'   : 'child'

    setDeclaration: ( e ) ->
        select      = $ e.currentTarget
        declaration = select.data 'declaration'
        target      = if select.hasClass 'flex-select-parent' then @parent else @child
        current     = target.css declaration
        update      = select.val()

        target.addClass( declaration + '-' + update ).removeClass declaration + '-' + current
        @el.find( '.code--' + declaration ).text update


module.exports = Examples
