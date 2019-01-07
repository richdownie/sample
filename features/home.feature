@home
Feature: Home Page Scenarios

  Scenario: I verify the home page
    Given I am on the home page
    When the Home Button should be selected
    Then I should NOT see "Cannot modify header information" on the page

  Scenario: I verify carousel Magic Mouse product details
    Given I am on the home page
    When I click the first carousel slide menu option
    Then I should see the Magic Mouse product name
    And I should see the Magic Mouse description
    And I should see an image of the Magic Mouse
    And I should see "150.00" on the page
    And I should NOT see "0.00" on the page

  Scenario: I verify carousel iPhone 5 product details
    Given I am on the home page
    When I click the second carousel slide menu option
    Then I should see the iPhone 5 product product name
    And I should see the iPhone 5 description
    And I should see an image of the iPhone 5
    And I should see "12.00" on the page
    And I should NOT see "0.00" on the page

  Scenario: I verify carousel iPod Nano Blue product details
    Given I am on the home page
    When I click the third carousel slide menu option
    Then I should see the iPod Nano Blue product product name
    And I should see the iPod Nano Blue description
    And I should see and image of the iPod Nano Blue
    And I should NOT see "0.00" on the page


  Scenario Outline: I verify the More Info link for each Product in the carousel
    Given I am on the home page
    When I click the More Info link on the <name> product
    Then I should be on the <product_description> page
    And I should see <name> on the page

    Examples:
      | name             | product_description |
      | "Magic Mouse"    | "/magic-mouse/"     |
      | "iPhone 5"       | "/iPhone-5/"        |
      | "iPod Nano Blue" | "/ipod-nano-blue/"  |

  Scenario Outline: I verify the Buy Button for each Product in the carousel
    Given I am on the home page
    When I select <name> from the carousel and click the Buy Now buttohn
    Then I should be on the <product_description> page
    And I should see <name> on the page

    Examples:
      | name             | product_description |
      | "Magic Mouse"    | "/magic-mouse/"     |
      | "iPhone 5"       | "/iPhone-5/"        |
      | "iPod Nano Blue" | "/ipod-nano-blue/"  |

  Scenario: I perform a search from the home page
    Given I am on the home page
    When I search for Magic Mouse
    Then I should see "Magic Mouse" on the page
    And the Home Button should NOT be selected

  @manual
  Scenario: I cycle through the product carousel 10 times
    Given I am on the home page
    And I cycle through the product carousel "10" times
    Then I should not see any errors on the page
    And I verify the carousel continues to trigger on its own

  @manual
  Scenario: Spot test the @home scenarios in remaining supported browsers
    Given I am on the home page
    And I spot test the @home scenarios in the cuke build with Firefox
    And I spot test the @home scenarios in the cuke build with Safari
    Then I spot test the @home scenarios in the cuke build with Internet Explorer