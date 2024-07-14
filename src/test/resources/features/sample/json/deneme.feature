Feature: Tests for the home page

  Scenario: Get all tags
    Given url 'https://conduit-api.bondaracademy.com/api/articles?limit=10&offset=0'
    When method Get
    Then status 200