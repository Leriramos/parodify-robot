*** Settings ***
Library   Browser    jsextension=${EXECDIR}/resources/module.js

*** Test Cases ***
Deve tocar uma musica
    New Browser     browser=chromium  headless=False
    New Page    about:black 

    Mock My Song

    Go To     https://parodify.vercel.app

    Get Text    css=.logged-user    contains    Fernando Papito

    ${play}    Set Variable    
    ...    xpath=//div[contains(@class, "song")]//h6[text()="Smells Like Test Script"]/..//button[contains(@class,"play")]

    ${pause}    Set Variable    
    ...    xpath=//div[contains(@class, "song")]//h6[text()="Smells Like Test Script"]/..//button[contains(@class,"pause")]


    Click    ${play}

    Wait For Elements State    ${pause}    visible    2
    Wait For Elements State    ${play}    visible    7

    