@checkout
Feature: Checkout Page Scenarios

  Scenario: I verify the checkout page
    Given I am on the checkout page
    Then I should see "Checkout" on the page

  Scenario: I verify an empty cart
    Given I DELETE all items in the cart
    And I am on the checkout page
    When I refresh the page
    Then I should see "Oops, there is nothing in your cart." on the page

  Scenario: I verify the cart with 1 item
    Given I DELETE all items in the cart
    And I am on the "/accessories/magic-mouse/" product description page
    And I click the "Add to Cart" button
    And I am on the checkout page
    Then I should see the item on the page
    And I should NOT see "Oops, there is nothing in your cart." on the page

  Scenario: I perform a search from the checkout page
    Given I am on the checkout page
    When I search for Magic Mouse
    And I should see "Magic Mouse" on the page
    Then the Home Button should NOT be selected

  @manual
  Scenario: Spot test the @checkout scenarios in remaining supported browsers
    Given I am on the checkout page
    And I spot test the @checkout scenarios in the cuke build with Firefox
    And I spot test the @checkout scenarios in the cuke build with Safari
    Then I spot test the @checkout scenarios in the cuke build with Internet Explorer