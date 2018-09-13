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
                <li><g:link class="list" action="index">Product list</g:link></li>
            </ul>
        </div>
        <div id="show-product" class="content scaffold-show" role="main">
            <f:display bean="product" />
            <g:form resource="${this.product}" method="DELETE">
                <fieldset class="buttons">
                    <input class="delete" type="submit" value="delete" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
