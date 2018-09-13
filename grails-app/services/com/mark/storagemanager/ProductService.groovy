package com.mark.storagemanager

import grails.gorm.transactions.Transactional

@Transactional
class ProductService {

    def get(id){
        Product.get(id)
    }

    def list() {
        Product.list().findAll({pr -> pr.active})
    }

    def save(product) {
        String info
        if (list().contains(product)) {
            info = "Sorry, product: \"" + product + "\" already exist"
        } else {
            product.save()
            info = "Product: \"" + product + "\" saved"
        }
        info
    }

    def delete(id){
        def productForDeactivation = Product.get(id)
        productForDeactivation.setActive(false)
        productForDeactivation.save()
    }
}
