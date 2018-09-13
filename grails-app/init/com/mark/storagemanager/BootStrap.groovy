package com.mark.storagemanager

class BootStrap {

    def init = {

        servletContext ->

        //INIT PRODUCTS
        Product product1 = new Product([active:true, name: "Tv", description: "good tv", pictureUrl:"url.1", article: "art1", price:1589]).save()
        Product product2 = new Product([active:true, name : "video player", description: "expensive", pictureUrl:"url.2", article: "art2", price:823]).save()
        Product product3 = new Product([active:true, name : "mobile", description: "not bad", pictureUrl:"url.3", article: "art3", price:505]).save()
        Product product4 = new Product([active:true, name : "chess", description: "short description", pictureUrl:"url.4", article: "art4", price:32]).save()
        Product product5 = new Product([active:true, name : "cup", description: "cup for tea", pictureUrl:"url.5", article: "art5", price:7]).save()
        Product product6 = new Product([active:true, name : "pen", description: "old pen", pictureUrl:"url.6", article: "art6", price:13]).save()
        Product product7 = new Product([active:true, name : "book", description: "Tom Soer", pictureUrl:"url.7", article: "art7", price:9]).save()

        //INIT STORAGES
        Storage storage1 = new Storage([ name:"Wallmart", address:"Lviv", capacity:1000]).save()
        Storage storage2 = new Storage([ name:"Vopak", address:"Ternopol", capacity:700]).save()
        Storage storage3 = new Storage([ name:"ATB", address:"Ivano-Frankivsk", capacity:500]).save()
        Storage storage4 = new Storage([ name:"Silpo", address:"Uman", capacity:900]).save()
        Storage storage5 = new Storage([ name:"Domino", address:"Dnipro", capacity:1500]).save()

        //INIT PRODUCTS FOR STORAGE 1
        new StorageItem([ product: product1, count: 15, storage: storage1]).save()
        new StorageItem([ product: product2, count: 25, storage: storage1]).save()
        new StorageItem([ product: product3, count: 35, storage: storage1]).save()
        new StorageItem([ product: product4, count: 45, storage: storage1]).save()

        //INIT PRODUCTS FOR STORAGE 2
        new StorageItem([ product: product4, count: 20, storage: storage2]).save()
        new StorageItem([ product: product5, count: 20, storage: storage2]).save()
        new StorageItem([ product: product6, count: 20, storage: storage2]).save()
        new StorageItem([ product: product7, count: 20, storage: storage2]).save()

        //INIT PRODUCTS FOR STORAGE 3
        new StorageItem([ product: product1, count: 100, storage: storage3]).save()
        new StorageItem([ product: product2, count: 100, storage: storage3]).save()
        new StorageItem([ product: product6, count: 100, storage: storage3]).save()
        new StorageItem([ product: product7, count: 100, storage: storage3]).save()

        //INIT PRODUCTS FOR STORAGE 4
        new StorageItem([ product: product1, count: 30, storage: storage4]).save()
    }

    def destroy = {
    }
}
