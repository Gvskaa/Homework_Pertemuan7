Feature: Get Login

  Background:
    Given url "https://petstore.swagger.io/v2/"
  Scenario: Swagger get test
    Given url "https://petstore.swagger.io/v2"
    And print "============Get Test Swagger============"

    Scenario: Get login user swagger
      Given url "https://petstore.swagger.io/v2/"
      When path "/user/login/"
      And params {username: "bima", password: "12345678"}
      And method get
      Then status 200
      And print response
