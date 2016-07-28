Feature: Create And Edit contact details via backoffice
  As a Backoffice User
  I want to update the contact details of a policy
  So that SB can contact the customer using their updated contact details

  Scenario: Policy with Contact Details History
    Given a policy
    And the policy has contact details history
    When I visit the edit contact details page
    Then I can see the contact details history table with the history changes

  Scenario: Policy without contact details history
    Given a policy
    When I visit the edit contact details page
    Then I can see an empty contact details history table

  Scenario: Update the contact details from backoffice
    Given a policy
    And I visit the edit contact details page
    When I update the contact details first name as "Kusum"
    Then I can see the contact details history with the history changes
    And the contact details is updated with the first name as "Kusum"

  Scenario: Update the contact details from journey(Manual Renewals, ARWI, MTA)
    Given a "renewable" "shop" policy
    And the consultant accesses the journey URL
    When I update the contact details first name as "Kusum"
    Then I can see the contact details history with the history changes
    And the contact details is updated with the first name as "Kusum"

  Scenario: Contact details not updated when incomplete information provided
    Given a policy
    And I visit the edit contact details page
    When I provide incomplete details
    Then I get an error message
    And contact details are not updated

  Scenario: Unsigned user is not allowed to update the contact details
    Given a policy
    And I am unauthorized user
    When I try to update the contact details
    Then an error is thrown
