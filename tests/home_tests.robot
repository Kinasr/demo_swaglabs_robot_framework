*** Settings ***
Library  SeleniumLibrary
Library  String

Resource  ../resources.robot
Resource  ../pages/login_page.robot
Resource  ../pages/home_page.robot

Test Setup  Run Keywords  Navigate To Login Page  Valid Login
Test Teardown  Close Browser

*** Test Cases ***
Add one item to the cart
    Add Item To Cart  Sauce Labs Backpack
    Assert Num In Cart Badge Should Be  1

Add two items to the cart
    Add Item To Cart  Sauce Labs Backpack
    Add Item To Cart  Sauce Labs Bike Light
    Assert Num In Cart Badge Should Be  2

Add one item to the cart then remove it
    Add Item To Cart  Sauce Labs Backpack
    Remove Item From Cart  Sauce Labs Backpack
    Assert That Cart Badge Is Not Visible

Add tow items to the cart then remove one
    Add Item To Cart  Sauce Labs Backpack
    Add Item To Cart  Sauce Labs Bike Light
    Remove Item From Cart  Sauce Labs Backpack
    Assert Num In Cart Badge Should Be  1

Add item then logout and login
    [Documentation]  To ensure that the added item is still exist in the cart.
    Add Item To Cart  Sauce Labs Backpack
    logout
    valid login
    Assert Num In Cart Badge Should Be  1