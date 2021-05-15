*** Variables ***
${checkoutButton}  id:checkout
${continueShoppingButton}  id:continue-shopping

*** Keywords ***
Navigate To Checkout Your Information Page
    Click Element  ${checkoutButton}

Assert That This Is Cart Page
    Page Should Contain  Your Cart