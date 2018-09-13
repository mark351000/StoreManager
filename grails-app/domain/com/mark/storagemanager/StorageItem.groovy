package com.mark.storagemanager

class StorageItem {

    Integer id
    Integer count

    static belongsTo = [storage: Storage, product: Product]

    static mapping = {
        product fetch: 'join'
    }

    static constraints = {
    }

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        StorageItem that = (StorageItem) o

        if (product != that.product) return false
        if (storage != that.storage) return false

        return true
    }

    int hashCode() {
        int result
        result = (product != null ? product.hashCode() : 0)
        result = 31 * result + (storage != null ? storage.hashCode() : 0)
        return result
    }
}
