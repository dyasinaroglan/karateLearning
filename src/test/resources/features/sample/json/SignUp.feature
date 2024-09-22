Feature: Sign up new user

  Background: Preconditions
    Given url apiUrl

  Scenario: new user

    Given def userData = {"email": "karateeTest1234ab@testinium.com", "username": "yasinKarate1v22"}
    Given path 'users'
    And request {"user": {"email": #('Test' + userData.email),"password" : "Karate1287","username": #('User' + userData.username)}}
    When method Post
    Then status 201


    #userData adında bir değişken tanımlıyorsunuz ve içerisine bir JSON nesnesi yerleştiriyorsunuz.

    #Değişkenin yapısı:
    #email: "karateeTest1234ab@testinium.com"
    #username: "yasinKarate1v22"


    #Bu yapı, API'ye gönderilecek verilerde kullanıcı bilgilerini dinamik olarak kontrol etmenizi sağlar.




    #Karate'de dinamik değişkenleri kullanarak userData.email verisinin başına 'Test' stringini ekliyorsunuz. Bu sayede, orijinal email verisini manipüle ederek dinamik bir string oluşturuyorsunuz.

    #userData.email: "karateeTest1234ab@testinium.com"
    #'Test' + userData.email: "TestkarateeTest1234ab@testinium.com"

    #Bu yapı, test sırasında email adreslerini farklılaştırmanızı sağlar.




  # Çok satırlı ifadeler için """ 3 tırnak ile biçimlendirme


  Scenario: new user1

    Given def userData = {"email": "karateeTest1234567ab@testinium.com", "username": "yasinKarate1v22678"}
    Given path 'users'
    And request
    """
         {
           "user": {
                  "email": #(userData.email),
                  "password" : "Yasin123",
                  "username": #(userData.username)
                   }
         }
    """
    When method Post
    Then status 201

