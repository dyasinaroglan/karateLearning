Feature: Article Delete

  Background:
    Given url 'https://conduit-api.bondaracademy.com/api/'
    # api kısmına kadar ortak olduğu için apiye kadar yazıyoruz.Feature:
    Given path 'users/login'
    And request {"user": {"email": "karate100@test.com","password": "Karate"}}
    When method Post
    Then status 200
    * def token = response.user.token


    Scenario: Create Article
      Given header Authorization = 'Token ' + token
      Given path 'articles'
      And  request {"article": {"tagList": [],"title": "şampiyonGS101","description": "bbb","body": "test"}}
      When method Post
      Then status 201
      * def articleID = response.article.slug

      Given header Authorization = 'Token ' + token
      Given path 'articles', articleID
      When method delete
      Then status 204

      Given params {limit: 10, offset: 0}
      Given path 'articles'
      When method get
      Then status 200
      And match response.articles[0].title != 'şampiyonGS101'