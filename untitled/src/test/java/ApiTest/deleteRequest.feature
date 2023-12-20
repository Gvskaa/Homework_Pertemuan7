Feature: Delete Username

  Background:
    Scenario: Swagger delete test
      Given url "https://petstore.swagger.io/v2/"
      And print "============Delete Test Swagger============"

    Scenario: Delete user swagger
      Given url "https://petstore.swagger.io/v2/"
      When path "/user/"
      And request {username:  'bima'}
      And method delete
      Then status 200
      And print response