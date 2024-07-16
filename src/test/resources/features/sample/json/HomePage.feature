Feature: Tests for the home page

  Background: Define url
    Given url 'https://conduit-api.bondaracademy.com/api/'

  Scenario: Get all tags
    # Given url 'https://conduit-api.bondaracademy.com/api/'   bunu artık silebilirz
    Given path 'tags'
    Given method Get
    Then status 200
    # And match response.tags contains 'Zoom'
    And match response.tags contains ['Zoom', 'Coding']
    And match response.tags !contains 'truck'
    And match response.tags == "#array"
    And match each response.tags == "#string"

  Scenario: Get 10 articles from the page
    Given params {limit:10, offset:0}
    Given path 'articles'
    When method Get
    Then status 200
  And match response.articles ==  '#[10]'
    # Bu ifade, response.articles alanının tam olarak 10 öğe içeren bir dizi (array) olduğunu doğrular.
  And match response.articlesCount == 10
  # '10' olarak yazsaydım dize olarak 10 beklemiş olacaktım ve hata alacaktım, ancak gerçek sayı olarak 10'dur.

    # parametre : Given param offset = 0, Given param limit = 10 === Given params {limit:10, offset:0}
    # ?limit=10&offset=0    === Given params {limit:10, offset:0}
    # Path sağlama : api/ ye kadar olan kısım bizim ana url'imiz Given path 'tags' eklediğimizde api den sonra tags kullandığımız anlamına gelir
    # Assertions (match): And match response.tags contains 'Zoom'  dönen tags url'inde tags'in içinde Zoom içeriyor mu?
    # And match response.tags contains ['Zoom', 'Coding']  ---- bu dizi değeri Zoom ve Coding içerir.
    # And match response.tags !contains 'truck'  ----> And match: Bu, önceki adımlara ek bir doğrulama adımı olduğunu belirtir. response.tags: Bu, API yanıtının tags adlı alanına işaret eder. !contains 'truck': Bu ifade, tags alanının içinde 'truck' değerinin bulunmadığını doğrular
    # And match response.tags == "#array" ----> API yanıtında tags alanının bir dizi (array) olduğunu kontrol eder.
    # And match each response.tags == "#string" ----> her bir ögenin string olup olmadığını test eder