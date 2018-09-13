<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Welcome to Grails</title>
    </head>
    <body>
        <content tag="nav">
            <li>
                <g:link controller="storage" action="index">Storages</g:link>
            </li>
            <li>
                <g:link controller="product" action="index">Products</g:link>
            </li>
        </content>

        <div class="svg" role="presentation">
            <div class="grails-logo-container">
                <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
            </div>
        </div>

        <div id="content" role="main">
            <section class="row colset-2-its">
                <h1>Welcome to Storage Manager</h1>

                <p>
                    This is my first Grails app
                </p>

            </section>
        </div>
    </body>
</html>
