*** Variables ***
${finishButtton}  id:finish


*** Keywords ***
Complete Order
    Click Element  ${finishButtton}

Assert That This Is Checkout Overview Page
    Page Should Contain  Checkout: Overview

Assert Success Order
    Page Should Contain  THANK YOU FOR YOUR ORDER