*** Settings ***
Documentation       This is the sanity test case
Library             SeleniumLibrary

*** Variables ***
${browser1}                 headlesschrome
${browser2}                 headlessfirefox
${url}                      http://15.206.178.254:4446/addressbook/
${title}                    Addressbook
${executable_path1}         /usr/local/share/WebDriverManager/chrome/96.0.4664.45/chromedriver_linux64#/chromedriver
${executable_path2}         /usr/local/share/WebDriverManager/gecko/v0.30.0/geckodriver-v0.30.0-linux64#/geckodriver

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
