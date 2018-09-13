<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
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
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="create" action="create">Make order</g:link></li>
            </ul>
        </div>
        <div id="list-storageItem" class="content scaffold-list" role="main">
            <f:table collection="${storageItemList}" />
        </div>
        <fieldset class="buttons">
        <g:link controller="storage" action="index">Back</g:link>
        </fieldset>
    </body>
</html>