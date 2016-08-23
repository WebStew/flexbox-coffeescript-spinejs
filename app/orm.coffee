
ORM =
    state:

        activate: ->
            @el.addClass 'controller-active'
            @el.removeClass 'controller-loading'

        deactivate: ->
            @el.removeClass 'controller-active'
            @el.addClass 'controller-loading'

    tabulate:

        tabulate: ->
            @tabs = @el.find '.nav-tabs'
            @tabs.find( 'a' ).on 'click', $.proxy( @setTab, @ )

        setTab: ( e ) ->
            link = $ e.currentTarget

            e.preventDefault()
            @tabs.find( '.active' ).removeClass 'active'
            link.parent().addClass 'active'
            @el.find( '.tab-content-active').removeClass 'tab-content-active'
            @el.find( link.attr( 'href' )).addClass 'tab-content-active'

module.exports = ORM
