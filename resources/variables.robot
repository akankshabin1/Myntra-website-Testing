*** Variables ***
${BASE_URL}         https://www.myntra.com
${DRIVER_PATH}      E:/EcommerceRegressionTesting/drivers/chromedriver.exe  # Path to Chrome WebDriver
${BROWSER}          chrome

# Test Data
${USERNAME}         your_email@example.com    # Replace with your actual Myntra credentials
${PASSWORD}         your_password_here
${BROWSER}          chrome                     # Use this variable to specify browser (chrome/firefox)

# User Profile Information
${NEW_FIRST_NAME}   NewFirstName
${NEW_LAST_NAME}    NewLastName

# Discount Codes (Assuming Myntra offers discounts via codes)
${VALID_DISCOUNT_CODE}     MYNTRA20
${INVALID_DISCOUNT_CODE}   FAKECODE123

# XPaths for Myntra elements
${LOGIN_BUTTON}     //a[contains(text(),'Profile')]  # Myntra login link
${LOGIN_EMAIL}      //input[@name='email']
${LOGIN_PASSWORD}   //input[@name='password']
${LOGIN_SUBMIT}     //button[contains(text(),'Log in')]
${SEARCH_BAR}       //input[@placeholder='Search for products, brands and more']
${SEARCH_BUTTON}    //span[contains(text(),'SEARCH')]   # Search button
${SEARCH_RESULT}    //h1[contains(text(),'Results for')]   # For validating search
${ADD_TO_CART}      //button[contains(text(),'Add to Bag')]
${CART_BUTTON}      //span[contains(text(),'Bag')]  # Cart button
${CHECKOUT_BUTTON}  //button[contains(text(),'Place Order')]
${CONFIRM_ORDER_BUTTON} //button[contains(text(),'Confirm Order')]
${DISCOUNT_CODE_INPUT} //input[@placeholder='Enter Coupon Code']
${APPLY_DISCOUNT_BUTTON} //button[contains(text(),'Apply Coupon')]
${PROFILE_LINK}     //a[contains(text(),'Profile')]   # Profile section link
${FIRST_NAME_FIELD} //input[@name='firstName']
${LAST_NAME_FIELD}  //input[@name='lastName']
${SAVE_PROFILE_BUTTON} //button[contains(text(),'Save Profile')]
