Feature: Articles

  Background:
    Given url 'https://conduit-api.bondaracademy.com/api/'
    Given path 'users/login'
    And request {"user": {"email": "karate100@test.com","password" : "Karate"}}
    When method Post
    Then status 200
    * def token = response.user.token

    @ignore
  Scenario: Create a new article
    Given header Authorization = 'Token ' + token
    Given path 'articles'
    And request {"article": {"tagList": [],"title": "abcşampiyon2789","description": "bbb","body": "test"}}
    When method Post
    Then status 201
    And match response.article.title == 'abcşampiyon278'

    # aynı testi çalıştırırsam status code was: 422, expected: 201, {"errors":{"title":["must be unique"]}} bunun nedeni Apı'nın aynı başlığa sahip iki makale oluşturmamıza izin vermemesi
    # ve başlığın benzersiz olması gerektiğidir.
    # oluşturulan başlık ile beklenen başlık farklı olursa
    # match failed: EQUALS
    # $ | not equal (STRING:STRING)
    # 'abcşampiyon2789'
    # 'abcşampiyon278' hatası alırız.

  #  @ignore etiketi o testi görmezden geldiğimizi gösteririz. belirli bir test senaryosunun çalıştırılmasını engellemek için kullanılır.
  #  Bu, belirli testlerin geçici olarak devre dışı bırakılması gerektiğinde özellikle yararlıdır.




