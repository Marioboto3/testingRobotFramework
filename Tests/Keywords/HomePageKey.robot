*** Settings ***
Library  SeleniumLibrary
Library    String

*** Keywords ***

Open page
    [Arguments]  ${page}
    
    ${page}  Convert To Lower Case  ${page}

    Run Keyword If  "${page}"== "ebay"  Open Browser    https://www.ebay.com/  chrome

Press button
    [Arguments]  ${button}
    
    Run Keyword If  "${button}"== "Electronics"  Press Keys    //*[@id="mainContent"]/div[1]/ul/li[4]/a  return
    Run Keyword If  "${button}"== "Motors"  Press Keys    //*[@id="mainContent"]/div[1]/ul/li[3]/a  return
    
Search bar
    [Arguments]  ${text}
    
    Input Text    //*[@id="gh-ac"]    ${text}