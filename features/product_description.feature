@product-description
Feature: Product Description Page Scenarios

  Background:
    Given I am on the "/accessories/magic-mouse/" product description page

  Scenario: I verify the magic mouse description page
    Then I should see "Magic Mouse" on the page
    Then I should see the Magic Mouse product name
    And I should see the Magic Mouse description
    And I should see an image of the Magic Mouse
    And I should see the old price of $200 on the page with strikethrough
    And I should see $150.00 on the page
    And I should NOT see Indian Rupee price on the page

  Scenario: I verify the Add to Cart button with multiple items
    And I click the "Add to Cart" button
    Then the checkout item should increment by 1
    And I click the "Add to Cart" button
    Then the checkout item should increment by 1
    When I refresh the page
    Then I should see the same number of items in the checkout cart

  Scenario: I verify the Add to Cart button
    And I click the "Add to Cart" button
    Then the checkout item should increment by 1

  Scenario: I verify the Facebook Like button works properly as an authenticated Facebook User
    And I login facebook with a test user account
    And I click the Facebook Like button
    Then I should see the Like count increment by 1
    When I refresh the page
    Then the total number of facebook Likes should remain the same
    And I click the Facebook Like button
    Then I should see the Like count decrement by 1
    When I refresh the page
    Then the total number of facebook Likes should remain the same

  Scenario: I verify the Facebook Like button works properly as an unauthenticated Facebook User
    And I click the Facebook Like button
    And I login facebook with a test user account from the facebook auth modal
    Then I should see the Like count increment by 1
    When I refresh the page
    Then the total number of facebook Likes should remain the same
    And I click the Facebook Like button
    Then I should see the Like count decrement by 1

  Scenario: I verify the ability to increase the Star Rating
    And I increase the star rating
    Then I should see a confirmation message of the new rating
    When I refresh the page
    Then I should see the previously updated star rating

  Scenario: I verify the ability to decrease the Star Rating
    And I decrease the star rating
    Then I should see a confirmation message of the new rating
    When I refresh the page
    Then I should see the previously updated star rating

  Scenario: I verify the images in the gallery group toggle the main image
    When I toggle the available images in the gallery group
    Then I should see the main preview image display

  Scenario: I verify the clicking the main image displays the image in a modal
    When I click on the main image
    Then I should see the main image in a modal on the center of the page

  Scenario: I verify the close X button on the main image in a modal closes the modal
    When I click on the main image
    And I click on the close X button
    Then the image modal should be closed

  Scenario: I verify the pressing the escape key closes the modal
    When I click on the main image
    And I press the escape key
    Then the image modal should be closed

  @manual
  Scenario: I verify clicking on the page outside the modal closes the modal
    When I click on the main image
    And I click on the page outside the scope of the modal
    Then the image modal should be closed

  Scenario: I verify other products in the also bought group
    And I scroll down the page
    When I should see images of items other people also bought
    When I should see product names of items other people also bought
    When I should see prices of items other people also bought

  Scenario: I verify other products in the also bought group images are clickable
    And I scroll down the page
    When I click the a product image in the also bought group
    Then I should be that product's description page

  Scenario: I verify other products in the also bought group product name links are clickable
    And I scroll down the page
    When I click the a product name link in the also bought group
    Then I should be that product's description page

  Scenario: I perform a search from the product description page
    When I search for Magic Mouse
    And I should see "Magic Mouse" on the page
    Then the Home Button should NOT be selected

  @manual
  Scenario: Spot test the @product-description scenarios in remaining supported browsers
    Given I spot test the @product-description scenarios in the cuke build with Firefox
    And I spot test the @product-description scenarios in the cuke build with Safari
    Then I spot test the @product-description scenarios in the cuke build with Internet Explorer

  Scenario: I create a new Product Review
    And I click the "Create a Review" button
    When I enter a valid review and submit the review form
    Then I should see my review on the product description page

  Scenario: I am able to view all Reviews
        # DELETE all review can done with a custom API endpoint call or DB connect with SQL
        # (similar to the cart items in checkout)
    And I DELETE all existing reviews
    When I submit a 100 reviews
    Then I should be able to view all