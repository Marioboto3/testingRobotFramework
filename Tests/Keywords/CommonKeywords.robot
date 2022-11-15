*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

----- (Step) -----
    [Arguments]     ${stepNumber}
    Log    console=true     message= STEP: ${stepNumber}

Exec
    [Arguments]     ${keywordToExecute}  @{args}
    Run Keyword And Return    ${keywordToExecute}  @{args}