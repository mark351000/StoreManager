package com.mark.storagemanager

class Storage {

    Integer id
    String name
    String address
    Integer capacity
    static hasMany = [items:StorageItem]

    static mapping = {
        items cascade: "all-delete-orphan"
        items fetch: 'join'
    }

    static constraints = {
    }
    @Override
    public String toString() {
        name
    }

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        Storage storage = (Storage) o

        if (address != storage.address) return false
        if (name != storage.name) return false

        return true
    }

    int hashCode() {
        int result
        result = (name != null ? name.hashCode() : 0)
        result = 31 * result + (address != null ? address.hashCode() : 0)
        return result
    }
}
