package com.baeldung.grails

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class StorageItemSpec extends Specification implements DomainUnitTest<StorageItem> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
