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

  @manual
  Scenario: Spot test above scenarios in remaining supported browsers
    Given I spot test above sceanrios in IE
    And I spot test above sceanrios in Firefox
    And I spot test above sceanrios in Safari