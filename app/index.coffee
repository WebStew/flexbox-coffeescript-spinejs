require( 'lib/setup' )

Spine   = require( 'spine' )
ORM     = require( 'orm' )

## Controllers
Introductions   = require( 'controllers/introductions' )
Basics          = require( 'controllers/basics' )
Examples        = require( 'controllers/examples' )
Browsers        = require( 'controllers/browsers' )
Resources       = require( 'controllers/resources' )

class Flexbox extends Spine.Stack

    @include ORM.state

    constructor: ->
        super
        Spine.Route.setup()
        @notification.hide()

    el: '#content'

    elements:
        '.notification-loading': 'notification'

    controllers:
        introduction    : Introductions
        basic           : Basics
        example         : Examples
        browser         : Browsers
        resource        : Resources

    routes:
        '/introduction' : 'introduction'
        '/basics'       : 'basic'
        '/examples'     : 'example'
        '/browsers'     : 'browser'
        '/resources'    : 'resource'

    default: 'introduction'

module.exports = Flexbox
