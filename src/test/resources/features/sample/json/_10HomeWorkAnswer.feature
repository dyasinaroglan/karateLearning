Feature: HomeWork

  Background:
    Given url apiUrl


    Scenario: GlobaL Feed
      Given path 'articles?limit=10&offset=0'
      Given method GET
      And status 200

      * def slugVeraible = response.articles[0].slug
      * def favoriteCountVerabile = response.articles[0].favoritesCount

      * print slugVeraible
      * print favoriteCountVerabile

      And path 'articles/' + slugVeraible + '/favorite'
      And request {}
      And method POST
      And  status 200
      
     