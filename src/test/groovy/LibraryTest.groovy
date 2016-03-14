/*
 * This Spock specification was auto generated by running the Gradle 'init' task
 * by 'johnfulton' at '14/03/16 7:46 PM' with Gradle 2.11
 *
 * @author johnfulton, @date 14/03/16 7:46 PM
 */

import spock.lang.Specification

class LibraryTest extends Specification{
    def "someLibraryMethod returns true"() {
        setup:
        Library lib = new Library()
        when:
        def result = lib.someLibraryMethod()
        then:
        result == true
    }
}
