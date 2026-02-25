Feature: Quality Analysis

  Scenario: Automated Verification
    Given I am on "https://www.google.com"
    When I wait for 10 seconds
    Then all "img" elements should have "alt" attribute
