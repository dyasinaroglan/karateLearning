Feature: Articles

  Background:
    * url apiUrl
    * def dataGenerator = Java.type('helpers.DataGenerator')
    * def articleRequestBody = read('classpath:json/newArticleRequest.json')
    * def articleValues = dataGenerator.getRandomArticleValues()
    * set articleRequestBody.article.title = articleValues.title
    * set articleRequestBody.article.description = articleValues.description
    * set articleRequestBody.article.body = articleValues.body


  Scenario: Create a new article
    Given path 'articles'
    And request articleRequestBody
    When method Post
    Then status 201
    And match response.article.title == articleRequestBody.article.title


  Scenario: Create and delete Article
    Given path 'articles'
    And  request articleRequestBody
    When method Post
    Then status 201
    * def articleID = response.article.slug

    Given params {limit: 10, offset: 0}
    Given path 'articles'
    When method get
    Then status 200
    And match response.articles[0].title == articleRequestBody.article.title