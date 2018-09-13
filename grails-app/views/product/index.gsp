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
                <li><g:link class="create" action="create">Create</g:link></li>
            </ul>
        </div>
        <div id="list-product" class="content scaffold-list" role="main">
            <f:table collection="${productList}" properties="['id', 'name', 'description', 'pictureUrl', 'article', 'price' ]" />
        </div>
        <div>${this.params.myparam}</div>
    </body>
</html>