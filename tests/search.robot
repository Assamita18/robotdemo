*** Settings ***
Documentation     A test suite containing tests related search for a product.

Suite Setup       Open Browser To Main Page
Suite Teardown    Close Browser
Test Template     Search for a product from List
Resource          ../EnvironmentConfiguration/resource.robot
Resource          ../PageObjects/Main_page.robot
Resource          ../PageObjects/Search_page.robot


*** Test Cases ***               PRODUCT
Existing Product: Juice                 juice
Existing Product: Banana                banana
Existing Product: Apple                 apple
Existing Product: kiwi                  kiwi



*** Keywords ***
Search for a product from List
    [Arguments]    ${product_name}
    Search for a product    ${product_name}
    Element Should Contain   ${search_term}   ${product_name}
    Capture Page Screenshot
