*** Variables ***
${burgerMenuButton}  id:react-burger-menu-btn
${logoutButton}  id:logout_sidebar_link
${shoppingCartBadge}  class:shopping_cart_badge
${shoppingCartButton}  class:shopping_cart_link
${itemsLink}  (//div[@class='inventory_item_name'])
${itemsPrice}  (//div[@class='inventory_item_price'])
${addToCartButton}  id:add-to-cart
${removeFromCartButton}  id:remove

*** Keywords ***
Add Item To Cart
    [Documentation]  Adding an item to the cart
    [Arguments]  ${itemName}
    ${itemName} =  Convert To Lower Case  ${itemName}
    ${itemName} =  Replace String  ${itemName}  ${SPACE}  -
    ${itemAddToCartButton} =  Catenate  SEPARATOR=-  ${addToCartButton}  ${itemName}
    Click Element  ${itemAddToCartButton}

Remove Item From Cart
    [Documentation]  Adding an item to the cart
    [Arguments]  ${itemName}
    ${itemName} =  Convert To Lower Case  ${itemName}
    ${itemName} =  Replace String  ${itemName}  ${SPACE}  -
    ${itemRemoveFromCartButton} =  Catenate  SEPARATOR=-  ${removeFromCartButton}  ${itemName}
    Click Element  ${itemRemoveFromCartButton}

Logout
    Click Element  ${burgerMenuButton}
    Wait Until Keyword Succeeds  10 sec  1 sec  Click Element  ${logoutButton}

Navigate To Cart Page
    Click Element  ${shoppingCartButton}

Assert That This Is Home Page
    Page Should Contain  Products

Assert Num In Cart Badge Should Be
    [Arguments]  ${eBadgeCount}
    ${aBadgeCount} =  Get Text  ${shoppingCartBadge}
    Should Be Equal  ${eBadgeCount}  ${aBadgeCount}

Assert That Cart Badge Is Not Visible
    Element Should Not Be Visible  ${shoppingCartBadge}