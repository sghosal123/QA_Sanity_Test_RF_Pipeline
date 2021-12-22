*** Settings ***
Documentation       This is the sanity test case
Library             SeleniumLibrary

*** Variables ***
${browser1}                 headlesschrome
${browser2}                 headlessfirefox
${url}                      http://65.2.5.195:4446/addressbook/
${title}                    Addressbook
${executable_path1}         /usr/local/bin/chromedriver.exe
${executable_path2}         /usr/local/bin/geckodriver.exe

*** Test Cases ***
Sanity Test Case For Address Book With GC
    open browser        ${url}      ${browser1}         executable_path=${executable_path1}
    maximize browser window
    title should be     ${title}
    close browser

Sanity Test Case For Address Book With FF
    open browser        ${url}      ${browser2}         executable_path=${executable_path2}
    maximize browser window
    title should be     ${title}
    close browser
