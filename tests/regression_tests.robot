*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot
Suite Setup    Open Browser With Specific Driver    ${BROWSER}
Suite Teardown    Close Browser

*** Test Cases ***

Test Myntra User Login
    [Documentation]    Test if the user can log in successfully on Myntra with valid credentials
    Login to Myntra
    Run Keyword And Expect Error    Wait Until Page Contains Element    //span[contains(text(),'Login failed')]

Test Myntra Product Search
    [Documentation]    Test if a user can search for products on Myntra
    [Arguments]    ${SEARCH_TERM}
    Search for Product on Myntra    Sneakers
    Page Should Contain    Results for

Test Add Item to Cart on Myntra
    [Documentation]    Test if a user can add an item to the cart on Myntra
    [Arguments]    ${SEARCH_TERM}
    Search for Product on Myntra    Sneakers
    Add Item to Cart on Myntra
    Page Should Contain    Item added to cart

Test Myntra Checkout Process
    [Documentation]    Test the checkout functionality on Myntra
    [Arguments]    ${SEARCH_TERM}
    Search for Product on Myntra    Sneakers
    Add Item to Cart on Myntra
    Checkout Item on Myntra
    Page Should Contain    Order confirmed

Test Apply Valid Discount on Myntra
    [Documentation]    Test if a valid discount can be applied during checkout on Myntra
    [Arguments]    ${SEARCH_TERM}
    Search for Product on Myntra    Sneakers
    Add Item to Cart on Myntra
    Apply Discount on Myntra    ${VALID_DISCOUNT_CODE}
    Page Should Contain    Coupon applied

Test Apply Invalid Discount on Myntra
    [Documentation]    Test if an invalid discount is rejected on Myntra
    [Arguments]    ${SEARCH_TERM}
    Search for Product on Myntra    Sneakers
    Add Item to Cart on Myntra
    Apply Discount on Myntra    ${INVALID_DISCOUNT_CODE}
    Page Should Contain    Invalid coupon code

Test Update User Profile on Myntra
    [Documentation]    Test if a user can update their profile information on Myntra
    Login to Myntra
    Update Profile on Myntra
    Page Should Contain    Profile updated

Test Running on Chrome for Myntra
    [Documentation]    Run all tests on Chrome browser for Myntra
    ${BROWSER} =    Set Variable    chrome  # Make sure to set it to chrome
    Run Test    Test Myntra User Login
    Run Test    Test Myntra Product Search    Sneakers
    Run Test    Test Add Item to Cart on Myntra    Sneakers
