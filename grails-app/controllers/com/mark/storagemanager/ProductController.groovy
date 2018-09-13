package com.mark.storagemanager

class ProductController {

    ProductService productService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        respond productService.list()
    }

    def show(Long id) {
        respond productService.get(id)
    }


    def create() {
        respond new Product(params)
    }

    def save(Product product) {
        def info = productService.save(product)
        redirect action: "index", method: "GET", params: [myparam: info]
    }

    def delete(Long id) {
        productService.delete(id)
        redirect action: "index", method: "GET"

    }
}
