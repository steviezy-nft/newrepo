# Created by steviezy at 5/03/22
Feature: Tests for Amazon search

  Scenario Outline: Verify that user can search for utensils
    Given Open Amazon page
    When Search for <keyword>
    Then Verify search results for <search_result> are shown
    Examples:
    |keyword  |search_result|
    |spoons   |"spoons"     |
    |forks    |"forks"      |
    |knives   |"knives"     |

#  Scenario: Verify that user can search for dress
#    Given Open Amazon page
#    When Search for dress
#    Then Verify search results for "dress" are shown

#    Scenario: Verify that user can search for shoes
#    Given Open Amazon page
#    When Search for shoes
#    Then Verify search results for "shoes" are shown

# Instead of using hard coded word, modify and create *keyword to condense

#  Scenario: User can add a product to the cart
#    Given Open Amazon page
#    When Search for Tritan Farm to Table Pitcher
#    And Click on the first product
#    And Click on Add to cart button
#    And Open cart page
#    Then Verify cart has 1 item(s)