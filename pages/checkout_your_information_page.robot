*** Variables ***
${firstNameTextField}  id:first-name
${lastNameTextField}  id:last-name
${zipCodeTextField}  id:postal-code
${continueButton}  id:continue
${cancelBittpm}  id:cancel


*** Keywords ***
Enter User Informations
    [Arguments]  ${fName}  ${lName}  ${zip}
    Input Text  ${firstNameTextField}  ${fName}
    Input Text  ${lastNameTextField}  ${lName}
    Input Text  ${zipCodetextfield}  ${zip}

Navigate To Checkout Overview Page
     Click Element  ${continueButton}

Assert That This Is Checkout Your Information Page
    Page Should Contain  Checkout: Your Information