*** Settings ***
Documentation       This is the sanity test case
Library             SeleniumLibrary

*** Variables ***
${browser1}      headlesschrome
${browser2}      headlessfirefox
${url}           http://65.2.79.70:4446/addressbook/
${title}         Addressbook

*** Test Cases ***
Sanity Test Case For Address Book With GC
    open browser        ${url}      ${browser1}
    maximize browser window
    title should be     ${title}
    close browser

Sanity Test Case For Address Book With FF
    open browser        ${url}      ${browser1}
    maximize browser window
    title should be     ${title}
    close browser






