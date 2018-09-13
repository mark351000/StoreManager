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
                <li><g:link class="create" action="create">Create storage</g:link></li>
            </ul>
        </div>
        <div id="list-storage" class="content scaffold-list" role="main">
            <f:table collection="${storageList}" properties="['id', 'name', 'address', 'capacity']" />
        </div>
        <div>${this.params.myparam}</div>
        <fieldset class="buttons">
            <g:link controller="storageItem" class="create" action="create">Make order</g:link>
        </fieldset>
        <fieldset class="buttons">
            <g:link controller="storageItem" class="index" action="index">All storages</g:link>
        </fieldset>
    </body>
</html>