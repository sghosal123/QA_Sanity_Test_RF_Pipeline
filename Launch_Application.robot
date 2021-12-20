*** Settings ***
Documentation       This is the sanity test case
Library             SeleniumLibrary

*** Variables ***
${browser1}      headlesschrome
${path1}         .\chromedriver.exe
${browser2}      headlessfirefox
${path2}         .\geckodriver.exe
${url}           http://35.154.34.14:4446/addressbook/
${title}         Addressbook

*** Test Cases ***
Sanity Test Case For Address Book With GC
    open browser        ${url}      ${browser1}     ${path1}
    maximize browser window
    title should be     ${title}
    close browser

Sanity Test Case For Address Book With FF
    open browser        ${url}      ${browser1}     ${path2}
    maximize browser window
    title should be     ${title}
    close browser