*** Settings ***
Library  SeleniumLibrary
Resource  ../Keywords/ImportedKeywords.robot

*** Variables ***

*** Keywords ***

Open home page
    [Documentation]  Keyword that opens the home page
    ----- (Step) -----  stepNumber=1
    Exec  Open Page  Ebay

*** Test Cases ***

Testing home Page
    [Documentation]  Test that verificates the correct performance of Ebay's principal page.
    ...              First, we accept the cookies.
    ...              After, we will see differents functionalities.
    [Tags]           Home Page
    
    Set Test Variable    ${page}  Ebay

    Open home page