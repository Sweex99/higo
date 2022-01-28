Feature: Autorization
  In ordr to read the page
  As a vieewer
  I want to see the home page after sign_in

  Scenario: View home page after sign_in
    Given I am on the autorization page
    Then I should see home page
