Feature: Book category

  Background: User should be able to see homepage
  Given       User enters URL "https://demo.nopcommerce.com/" in browser
  And         User is on homepage

Scenario Outline: User should be able to see top menu tabs on home page with categories
  When        User is on home page
  Then        User should be able to see top menu tabs with "<categories>"
  Examples:
    |categories         |
    |Computer           |
    |Electronics        |
    |Apparel            |
    |Digital downloads  |
    |Books              |
    |Jewellery          |
    |Gift cards         |

Scenario Outline: User should be able to see book page with filters
  When        User select book category from top menu tabs on homepage
  Then        User should be navigated to book category
  And         User should be able to see "<Filters>"
  Examples:
    | Filters  |
    | Short by |
    | Display  |
    | The Grid |
    | List Tab |

Scenario Outline: User should be able to see list of terms of each filter
  Given       User is on book page
  When        User clicks on "<Filters>"
  Then        User should be able to see "<List>" in dropdown menu
    Examples:
    | Filters  | List                                                                               |
    | Sort by  | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on     |
    | Display  | 3, 6, 9                                                                            |

Scenario Outline: User should be able to choose any filter option with specific result
  Given       User is on book page
  When        User clicks on "<Filters>
  And         User clicks on any "<Option>"
  Then        User should be able to choose any filter option from the list
  And         User should be able to see "<Result>"
  Examples:
    | Filters  | Option             | Result                                                             |
    | Sort by  | Name: A to Z       | Sorted products with the product name in alphabetical order A to Z |
    | Sort by  | Name: Z to A       | Sorted products with the product name in alphabetical order Z to A |
    | Sort by  | Price: Low to High | Sorted products with the price in descending order                 |
    | Sort by  | Price: High to Low | Sorted products with the price in ascending order                  |
    | Sort by  | Created on         | Recently added products should be listed first                     |
    | Display  | 3                  | 3 products in a page                                               |
    | Display  | 6                  | 6 products in a page                                               |
    | Display  | 9                  | 9 products in a page                                               |

Scenario Outline: User should be able to see product display format according display format type as per given picture in SRS document
  Given       User is on book page
  When        User clicks on "<Display Format Icon>"
  Then        User should be able to see product display format according to display format type given in SRS document
  Examples:
    | Display Format Icon |
    | Grid                |
    | List                |