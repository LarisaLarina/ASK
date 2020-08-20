Feature: Login
  Scenario: Valid email, valid password
    Given I open "Login" page
    When I type email "student0@gmail.com"
    And I type password "123456"
    And I click Sign in button
    Then Text "Victor Victorov" appears

  Scenario: Invalid email, valid password
    Given I open "Login" page
    When I type email "student0@gmail.co"
    And I type password "123456"
    And I click Sign in button

  Scenario: Valid email, invalid password
    Given I open "Login" page
    When I type email "student0@gmail.com"
    And I type password "12345"
    And I click Sign in button

  Scenario: Empty email, valid password
    Given I open "Login" page
    When I type password "123456"
    And I click Sign in button

  Scenario: Valid email, empty password
    Given I open "Login" page
    When I type email "student0@gmail.com"
    And I click Sign in button

  Scenario: Leading spaces not allowed
    Given I open "Login" page
    When I type email " student0@gmail.com"
    And I type password "123456"
    And I click Sign in button









