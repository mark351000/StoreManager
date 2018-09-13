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
        <div id="create-storage" class="content scaffold-create" role="main">
            <g:form resource="${this.storage}" method="POST">
                <fieldset class="form">

                    <div class="fieldcontain required">
                        <label for="address">Address
                            <span class="required-indicator">*</span>
                        </label><input type="text" name="address" value="" required="" id="address">
                    </div>

                    <div class="fieldcontain required">
                        <label for="name">Name
                            <span class="required-indicator">*</span>
                        </label><input type="text" name="name" value="" required="" id="name">
                    </div>

                    <div class="fieldcontain required">
                        <label for="capacity">Capacity
                            <span class="required-indicator">*</span>
                        </label><input type="number" name="capacity" value="" required="" id="capacity">
                    </div>

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
