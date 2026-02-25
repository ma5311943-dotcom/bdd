Feature: Manual AI Test
  Scenario: User defined instructions
    Given I am on 'https://cityuniversity.edu.pk/'
    When I set viewport to '375x812'
    Then I wait for element 'header' to be visible
    When I set viewport to '768x1024'
    Then I wait for element 'header' to be visible
    When I set viewport to '1366x768'
    Then I wait for element 'header' to be visible
