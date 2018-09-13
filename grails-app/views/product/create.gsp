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
        <div id="create-product" class="content scaffold-create" role="main">
            <g:form resource="${this.product}" method="POST">
                <fieldset class="form">
                    <f:all bean="product"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="Create" />
                </fieldset>
            </g:form>
            <fieldset class="buttons">
                <g:link action="index">Back</g:link>
            </fieldset>
        </div>
    </body>
</html>
