Feature: Articles

  Background:
    Given url apiUrl
    * def tokenResponse = call read('classpath:helpers/CreateToken.feature') {"email": "karate100@test.com","password": "Karate"}
    * def token = tokenResponse.authToken

  Scenario: Create a new article
    Given header Authorization = 'Token ' + token
    Given path 'articles'
    And request {"article": {"tagList": [],"title": "article7","description": "bbb7","body": "testt7}
    When method Post
    Then status 201
    And match response.article.title == 'article7'





