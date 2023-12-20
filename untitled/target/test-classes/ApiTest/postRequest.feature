Feature: Post user

  Background:
  Scenario: Swagger post test
    Given url "https://petstore.swagger.io/v2/"
    And print "============Post Test Swagger============"
  Scenario: Create user swagger
    Given url "https://petstore.swagger.io/v2/"
    When path "user/createWithArray/"
    * def body = [{ "id": 12, "username": "bima", "firstName": "bi", "lastName": "ma", "email": "bima@mail.com", "password": "12345678", "phone": "0898765567", "userStatus": 1}]
    * def headerSwagger = { Accept: 'application/json'}
    And headers headerSwagger
    And request body
    And method post
    Then status 200
    And print response
    And print body

