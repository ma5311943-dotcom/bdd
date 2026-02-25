Feature: Quality Analysis

  Scenario: Automated Verification
    Given I am on "https://www.olx.com.pk/"
    When I wait for 10 seconds
    Then there should be a non-existent element
