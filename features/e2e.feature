@happy-path @smoketest
Feature: e2e Scenarios

  Scenario: I search and purchase a product.
    Given I am on the product list category page
    And I search for "Magic Mouse"
    And I click the Add to Cart button
    And I verify the header cart count is equals "1"
    When I am on the checkout page
    Then I should see "Magie Mouse" on the page
    When I purchase the item from the cart
    Then I should see "Successfully purchased Item" on the page