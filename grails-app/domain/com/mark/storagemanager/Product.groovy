package com.mark.storagemanager

class Product {

    Integer id
    String name
    String description
    String pictureUrl
    String article
    Integer price
    Boolean active

    static constraints = {
    }


    @Override
    public String toString() {
        name
    }

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        Product product = (Product) o

        if (article != product.article) return false
        if (name != product.name) return false

        return true
    }

    int hashCode() {
        int result
        result = (name != null ? name.hashCode() : 0)
        result = 31 * result + (article != null ? article.hashCode() : 0)
        return result
    }
}
