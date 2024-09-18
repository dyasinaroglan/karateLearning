Feature: login olma, makale oluşturma ve makale silme

  Background:
    Given url 'https://conduit-api.bondaracademy.com/api/'
    Given path 'users/login'
    And request {"user": {"email": "karate100@test.com","password": "Karate"}}
    When method Post
    When status 200
    Then match response.user.username == 'KarateYasin'

    * def token = response.user.token

    Scenario: makale yaratma
      Given header Authorization = 'Token ' + token
      Given path 'articles'
      And request {"article": {"title": "deneme5Makale","description": "konusuolmayanmakale5","body": "şampiyonGalatasaray5"}}
      When method Post
      When status 201
      * def articleID = response.article.slug

      Given header Authorization = 'Token ' + token
      Given path 'articles', articleID
      When method delete
      Then status 204