*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${browser1}      headlesschrome
${browser2}      headlessfirefox
${url}           http://65.1.108.197:4446/addressbook/
${title}         Addressbook

*** Test Cases ***
Sanity Test Case For Address Book With GC
    Launch browser in GoogleChrome
    Assert the title page          ${title}
    Close all the browsers

Sanity Test Case For Address Book With FF
    Launch browser in Firefox
    Assert the title page       ${title}
    close all the browsers

*** Keywords ***

Launch browser in GoogleChrome
    open browser        ${url}      ${browser1}
    maximize browser window

Launch browser in Firefox
    open browser        ${url}      ${browser2}
    maximize browser window

Assert the title page
    [Arguments]     ${title}
    title should be     ${title}

Close all the browsers
    close all browsers

