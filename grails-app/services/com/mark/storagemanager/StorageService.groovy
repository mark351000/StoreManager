package com.mark.storagemanager

import grails.gorm.transactions.Transactional

@Transactional
class StorageService {

    def get(id){
        Storage.get(id)
    }

    def list() {
        Storage.list()
    }

    def save(storage) {
        String info
        if (list().contains(storage)) {
            info = "Sorry, storage: \"" + storage + "\" already exist"
        } else {
            storage.save()
            info = "Storage: \"" + storage + "\" saved"
        }
        info
    }

    def delete(id){
        Storage.get(id).delete()
    }
}
