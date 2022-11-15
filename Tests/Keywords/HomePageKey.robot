*** Settings ***
Library  SeleniumLibrary
Library    String

*** Keywords ***

Open page
    [Arguments]  ${page}
    
    ${page}  Convert To Lower Case  ${page}

    Run Keyword If  "${page}"== "ebay"  Open Browser    https://www.ebay.com/  chrome

