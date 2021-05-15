*** Settings ***
Library  SeleniumLibrary
Library  String

Resource  ../resources.robot
Resource  ../pages/login_page.robot
Resource  ../pages/home_page.robot
Resource  ../pages/cart_page.robot
Resource  ../pages/checkout_your_information_page.robot
Resource  ../pages/checkout_overview_page.robot

Test Setup  Run Keywords  Navigate To Login Page  Valid Login
Test Teardown  Close Browser


*** Test Cases ***
Order one item using valid data
    Add Item To Cart  Sauce Labs Backpack
    Navigate To Cart Page
    Navigate To Checkout Your Information Page
    Enter User Informations  test  test  12345
    Navigate To Checkout Overview Page
    Complete Order
    Assert Success Order


