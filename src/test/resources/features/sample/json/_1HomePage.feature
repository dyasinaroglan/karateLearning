Feature: Tests for the home page

  Background: Define url
    Given url apiUrl

  Scenario: Get all tags
    # Given url 'https://conduit-api.bondaracademy.com/api/'   bunu artık silebilirz
    Given path 'tags'
    Given method Get
    Then status 200
    # And match response.tags contains 'Zoom'
    And match response.tags contains ['Zoom', 'Coding']
    And match response.tags !contains 'truck'
    And match response.tags contains any ['fish','dog','SIDA']
    And match response.tags contains only ['dragons']
    And match response.tags == "#array"
    # bu yanıt metninin bir diziye eşit olduğunu söyler - Fuzzy matching - Gerçek değerinin ne olduğu umrumuzda değil. array mi? string mi? boolean mı?
    And match each response.tags == "#string"

  Scenario: Get 10 articles from the page

    * def timeValidator = read('classpath:helpers/timeValidator.js')

    Given params {limit:10, offset:0}
    Given path 'articles'
    When method Get
    Then status 200
    And match response.articles ==  '#[10]'
    # Bu ifade, response.articles alanının tam olarak 10 öğe içeren bir dizi (array) olduğunu doğrular.
    And match response.articlesCount == 32
    # '10' olarak yazsaydım dize olarak 10 beklemiş olacaktım ve hata alacaktım, ancak gerçek sayı olarak 10'dur
    And match response.articlesCount != 100
  # 100' e eşit olmadığını gösterir
    And match response == {"articles": "#array", "articlesCount": 32}
    And match response.articles[0].createdAt contains '2024'
    And match response.articles[*].favoritesCount contains 0
  # burada * yaparak tüm articles içindeki makaleleri kontrol ediyor

    And match response.articles[*].author.bio contains null
  # bio'lardan en az birinin null olduğunu doğrulama

    And match each response..following == false

    And match each response..following == '#boolean'
  # following key'i bize boolean bir değer döndürür.   Fuzzy matching   Bu sadece user.profile.bio alanını kontrol eder. Ancak .. operatörü ile JSON'da her yerdeki bio alanlarını kontrol edebilirsiniz:

    And match each response..favoritesCount == '#number'

    And match each response..bio == '##string'
  # dönen metnin string veya null olduğunu doğrular. bu iki değerden biri kabul edilebilir. 2 tane # işareti koyduğumuzda kabul edilebilir değerin null veya string olduğu anlamına gelir.Feature:





    # parametre : Given param offset = 0, Given param limit = 10 === Given params {limit:10, offset:0}
    # ?limit=10&offset=0    === Given params {limit:10, offset:0}
    # Path sağlama : api/ ye kadar olan kısım bizim ana url'imiz Given path 'tags' eklediğimizde api den sonra tags kullandığımız anlamına gelir
    # Assertions (match): And match response.tags contains 'Zoom'  dönen tags url'inde tags'in içinde Zoom içeriyor mu?
    # And match response.tags contains ['Zoom', 'Coding']  ---- bu dizi değeri Zoom ve Coding içerir.
    # And match response.tags !contains 'truck'  ----> And match: Bu, önceki adımlara ek bir doğrulama adımı olduğunu belirtir. response.tags: Bu, API yanıtının tags adlı alanına işaret eder. !contains 'truck': Bu ifade, tags alanının içinde 'truck' değerinin bulunmadığını doğrular
    # And match response.tags == "#array" ----> API yanıtında tags alanının bir dizi (array) olduğunu kontrol eder.
    # And match each response.tags == "#string" ----> her bir ögenin string olup olmadığını test eder

  # @Karate.Test  @debug
  #    Karate testTags() {
  #        return Karate.run("").tags("@debug");
  #    } Bu ifade, sadece @debug etiketi ile işaretlenmiş olan test senaryolarını çalıştırır.
  #    Yani, test dosyalarınızda @debug etiketi ile belirtilmiş senaryolar varsa, sadece bu senaryolar çalıştırılır.

   #  mvn test -Dkarate.options="--tags @debug"


     # And match response.tags contains any ['fish','dog','SIDA'] -----> Bu üç değerden herhangi birinin o dizinin içinde olduğunun kontrolü
     # And match response.tags contains only ['dragons']  -----> sadece sağlanan yazılan belirli değerin bu dizinin bir parçası olduğunu test eder.


    And match each response.articles ==
    """
    {
            "slug": "#string",
            "title": "#string",
            "description": "#string",
            "body": "#string",
            "tagList": '#array',
            "createdAt": "#? timeValidator(_)",
            "updatedAt": "#? timeValidator(_)",
            "favorited": '#boolean',
            "favoritesCount": '#number',
            "author": {
                "username": "#string",
                "bio": '##string',
                "image": "#string",
                "following": '#boolean'
            }
        }
    """

  # Schema Validation konusu üstteki