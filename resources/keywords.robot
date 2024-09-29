*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser to Myntra Site
    Open Browser    ${BASE_URL}    chrome    executable_path=${DRIVER_PATH}  # Specify chrome here
    Maximize Browser Window

Login to Myntra
    Click Element    ${LOGIN_BUTTON}
    Input Text    ${LOGIN_EMAIL}    ${USERNAME}
    Input Text    ${LOGIN_PASSWORD}    ${PASSWORD}
    Click Button    ${LOGIN_SUBMIT}
    Wait Until Page Contains Element    ${PROFILE_LINK}    timeout=10

Search for Product on Myntra
    Input Text    ${SEARCH_BAR}    ${SEARCH_TERM}
    Click Element    ${SEARCH_BUTTON}
    Wait Until Page Contains Element    ${SEARCH_RESULT}    timeout=10

Add Item to Cart on Myntra
    Click Button    ${ADD_TO_CART}
    Wait Until Page Contains Element    ${CART_BUTTON}    timeout=10

Checkout Item on Myntra
    Click Element    ${CART_BUTTON}
    Click Button    ${CHECKOUT_BUTTON}
    Wait Until Page Contains Element    ${CONFIRM_ORDER_BUTTON}    timeout=10
    Click Button    ${CONFIRM_ORDER_BUTTON}
    Wait Until Page Contains Element    //div[contains(text(),'Order confirmed')]    timeout=10

Apply Discount on Myntra
    [Arguments]    ${DISCOUNT_CODE}
    Input Text    ${DISCOUNT_CODE_INPUT}    ${DISCOUNT_CODE}
    Click Button    ${APPLY_DISCOUNT_BUTTON}
    Wait Until Page Contains Element    //span[contains(text(),'Coupon applied')]    timeout=10

Update Profile on Myntra
    Click Element    ${PROFILE_LINK}
    Input Text    ${FIRST_NAME_FIELD}    ${NEW_FIRST_NAME}
    Input Text    ${LAST_NAME_FIELD}    ${NEW_LAST_NAME}
    Click Button    ${SAVE_PROFILE_BUTTON}
    Wait Until Page Contains Element    //span[contains(text(),'Profile updated')]    timeout=10
