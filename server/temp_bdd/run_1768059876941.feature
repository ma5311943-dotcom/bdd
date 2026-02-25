Feature: Quality Analysis

  Scenario: Automated Verification
    Given I am on "https://www.google.com"
    When I wait for 2 seconds
    Then there should be exactly one "h1" element
