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
        <div id="create-storageItem" class="content scaffold-create" role="main">
            <g:form  resource="${this.storageItem}" method="POST">
                <div id="form">
                    <fieldset id="ddd" class="form" style="position: relative; max-width:350px; margin: 0 auto;">
                    <f:all bean="storageItem"/>
                %{--<div style="color:red;position: absolute;right:0; top:0;font-size: 20px; cursor: pointer; "onclick="deleteform(this)">X</div>--}%
                    </fieldset>
                </div>
        %{--<a onclick="clone()">Clone</a>
        <script>
            window.onload = function () {
                window.counter = 1;
            };

            function clone() {
                const initPart = window.document.getElementById('ddd');
                const form = window.document.getElementById('form');
                const clone = initPart.cloneNode(true);
                clone.id = 'part' + window.counter;
                clone.childNodes.forEach((node) => {
                    node.value = '';
                });

                window.counter++;
                form.appendChild(clone);
            };
            function deleteform(self) {
                const delEl = self.parentNode;
                delEl.parentNode.removeChild(delEl);
            }
        </script>--}%
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