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
                <li><g:link class="list" action="index">Storage list</g:link></li>
            </ul>
        </div>
        <div id="show-storage" class="content scaffold-show" role="main">
            <div class="storage" id="${storage?.id}">
                <div>Address: ${storage?.address}</div>
                <div>Name: ${storage?.name}</div>
                <div>Capacity: ${storage?.capacity}</div>
            </div>
            <div>
                <div id="list-storage" class="content scaffold-list" role="main">
                    <table>
                        <thead>
                        <tr>
                            <g:sortableColumn property="name" title="Name" />
                            <g:sortableColumn property="description" title="Description" />
                            <g:sortableColumn property="pictureUrl" title="Image" />
                            <g:sortableColumn property="article" title="Article" />
                            <g:sortableColumn property="price" title="Price" />
                            <g:sortableColumn property="count" title="Count" />
                            <g:sortableColumn property="totalPrice" title="Total Price" />
                        </tr>
                        </thead>
                        <tbody>
                            <g:each in="${storage.items}" var="item" status="i">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td>
                                        ${item.product.name}
                                    </td>
                                    <td>
                                        ${item.product.description}
                                    </td>
                                    <td>
                                        ${item.product.pictureUrl}
                                    </td>
                                    <td>
                                        ${item.product.article}
                                    </td>
                                    <td>
                                        ${item.product.price}
                                    </td>
                                    <td>
                                        ${item.count}
                                    </td>
                                    <td>
                                        ${item.count * item.product.price}
                                    </td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
            <g:form resource="${this.storage}" method="DELETE">
                <fieldset class="buttons">
                    <input class="delete" type="submit" value="delete" />
                </fieldset>
            </g:form>
        </div>
        <fieldset class="buttons">
        <g:link controller="storageItem" class="create" action="create">Make order</g:link>
        </fieldset>
    </body>
</html>
