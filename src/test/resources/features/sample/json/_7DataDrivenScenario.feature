Feature: Data Driven Scenario

  Background: Preconditions
    * def dataGenerator = Java.type('helpers.DataGenerator')
    * def timeValidator = read('classpath:helpers/timeValidator.js')
    Given url apiUrl
    * def randomEmail = dataGenerator.getRandomEmail()
    * def randomUsername = dataGenerator.getRandomUserName()

    # daha önce alınmış bir kullanıcıyı kullanma

  Scenario: Validate Sign up error messages

    Given path 'users'
    And request
    """
         {
           "user": {
                  "email": "karateTest12@testinium.com",
                  "password" : "Yasin123",
                  "username": #(randomUsername)
                   }
         }
    """
    When method Post
    Then status 422


  Scenario Outline: Validate Sign up error messages



    Given path 'users'
    And request
    """
         {
           "user": {
                  "email": "<email>",
                  "password" : "<password>",
                  "username": "<username>"
                   }
         }
    """
    When method Post
    Then status 422
    And match response == <errorResponse>

    Examples:
      | email | password | username | errorResponse |
      | #(randomEmail) | Karate123 | KarateUser123 | {"errors":{"username":["has already been taken"]}} |
      | karateTest12s@testinium.com | Karate123 | #(randomUsername) | {"errors":{"email":["has already been taken"]}} |
      |                | Karate1 | #(randomUsername) | {"errors":{"email":["can't be blank"]}} |
      | #(randomEmail) |  | #(randomUsername) | {"errors":{"password":["can't be blank"]}} |
      | #(randomEmail) | Karate123 |  | {"errors":{"username":["can't be blank"]}} |


     # Examples tablosundan verileri alacak tırnak içerisinde büyüktür küçüktür işareti ile gösteriyoruz.
     # Examples da kaç adet data varsa o kadar senaryo çalışacaktır. toplam : 6 kere test çalıaşacak

