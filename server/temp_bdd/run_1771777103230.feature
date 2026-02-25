Feature: Manual AI Test
  Scenario: User defined instructions
    Given I am on 'https://admin-demo.nopcommerce.com/login'
    Given User launch chrome browser
    When User opens URL "https://admin-demo.nopcommerce.com/login"
    And User enters Email as "admin@yourstore.com" and Password as "admin"
    And Click on Login
    Then User can view Dashboard
