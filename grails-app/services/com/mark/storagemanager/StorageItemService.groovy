package com.mark.storagemanager

import grails.gorm.transactions.Transactional

@Transactional
class StorageItemService {

    def get(id){
        StorageItem.get(id)
    }

    def getAllByStorage(storage){
        StorageItem.findAllByStorage(storage)
    }

    def list() {
        StorageItem.list()
    }

    def save(storageItem) {

        String info
        Integer freeSpace = freeSpace(storageItem)

        if (freeSpace < storageItem.count) { info = "Sorry, not enough space in storage: " + storageItem.storage
        } else if (list().contains(storageItem)) {
            Integer count = storageItem.count
            StorageItem storageItem1
            list().each { if (it.equals(storageItem)) storageItem1 = it }
            if ((storageItem1.count + count) < 0) info = "Sorry, not enough products in storage: " + storageItem.storage
            else {
                storageItem1.count += count
                storageItem1.save()
                info = "Saved in storage " + storageItem.storage
            }
        } else {
            storageItem.save()
            info = "Saved in storage " + storageItem.storage
        }
        info
    }

    def delete(id) {
        StorageItem.get(id).delete()
    }

    def freeSpace(storageItem){
        Integer freeSpace = storageItem.storage.capacity
        getAllByStorage(storageItem.storage).each {freeSpace-=it.count}
        freeSpace
    }
}
