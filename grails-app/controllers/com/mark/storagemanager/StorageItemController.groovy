package com.mark.storagemanager

class StorageItemController {

    StorageItemService storageItemService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        respond storageItemService.list()
    }

    def show(Long id) {
        respond storageItemService.get(id)
    }

    def getAllByStorage(Storage storage){
        respond storageItemService.getAllByStorage(storage)
    }

    def create() {
        respond new StorageItem(params)
    }

    def save(StorageItem storageItem) {
        def info = storageItemService.save(storageItem)
        redirect controller:"storage", action:"index", method:"GET", params:[myparam: info]
    }

    def delete(Long id) {
        storageItemService.delete(id)
        redirect action:"index", method:"GET"
    }
}
