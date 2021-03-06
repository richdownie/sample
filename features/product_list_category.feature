@product-list-category
Feature: Product List Category Page Scenarios

  Scenario: I verify the product list category page
    Given I am on the product list category page
    Then I should see "Product Category" on the page

  Scenario Outline: I search for Products
    Given I am on the product list category page
    When I search for <product>
    And I should see <product> on the page

    Examples:
      | product                             |
      | "Magic Mouse"                       |
      | "iPhone 5"                          |
      | "iPod Nano Blue"                    |
      | "Apple TV"                          |
      | "Sennheiser RS 120"                 |
      | "Apple 27 inch Thunderbolt Display" |
      | "Asus MX239H 23-inch Widescreen AH" |

  Scenario: I boundary test the search field
    Given I am on the product list category page
    Then I boundary test the search field

  Scenario: I security test the search field
    Given I am on the product list category page
    When I search for "<script>alert("Alert Me!");</script>"
    Then I should see "Not Acceptable!" on the page

  Scenario: I verify list and grid view toggle
    Given I am on the product list category page
    Then I verify I am able to toggel between list and grid views

  Scenario Outline: The product list category should display relevant products
    Given I am on the product list category page
    And I hover over the "Product Category" link
    And I follow the <product> link
    Then I should only see <product> on the page
    And I should NOT see "Magic Mouse" on the page
    And I should NOT see other non-related products on the page

    Examples:
      | product       |
      | "Accessories" |
      | "iMacs"       |
      | "iPads"       |
      | "iPhones"     |
      | "iPods"       |
      | "MacBooks"    |

  @manual
  Scenario: Spot test the @product-list-category scenarios in remaining supported browsers
    Given I am on the product list category page
    And I spot test the @product-list-category scenarios in the cuke build with Firefox
    And I spot test the @product-list-category scenarios in the cuke build with Safari
    Then I spot test the @product-list-category scenarios in the cuke build with Internet Explorer