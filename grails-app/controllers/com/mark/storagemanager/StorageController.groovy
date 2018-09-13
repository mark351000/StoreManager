package com.mark.storagemanager

class StorageController {

    StorageService storageService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        respond storageService.list()
    }

    def show(Long id) {
        respond storageService.get(id)
    }

    def create() {
        respond new Storage(params)
    }

    def save(Storage storage) {
        def info = storageService.save(storage)
        redirect action:"index", method:"GET", params:[myparam: info]
    }

    def delete(Long id) {
        storageService.delete(id)
        redirect action:"index", method:"GET"
    }
}
