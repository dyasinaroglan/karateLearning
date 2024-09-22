Feature: Enviroment Veriables

  Background:
    Given url apiUrl
    * def tokenResponse = call read('classpath:helpers/CreateToken.feature')
    * def token = tokenResponse.authToken

  Scenario: Enviroment Veriables
    Given header Authorization = 'Token ' + token
    Given path 'articles'
    And request {"article": {"tagList": [],"title": "article8","description": "bbb8","body": "testt8"}}
    When method Post
    Then status 201
    And match response.article.title == 'article8'


    # token değerini değişkene atama

  Scenario: Enviroment Veriables token
    Given path 'articles'
    And request {"article": {"tagList": [],"title": "article9","description": "bbb9","body": "testt9"}}
    When method Post
    Then status 201
    And match response.article.title == 'article9'
