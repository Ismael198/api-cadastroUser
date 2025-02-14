*** Settings ***

Documentation       Main

Library             Browser

*** Variables ***
${URL_BASE}        https://serverest.dev/
${HEADERS}         {"accept": "application/json", "Content-Type": "application/json"}
${BROWSER}        chromium
${IS_HEADLESS}    True

*** Keywords ***
Start Browser
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}
    New Page       ${URL_BASE}

Finish Browser
    Take Screenshot    fullPage=true

