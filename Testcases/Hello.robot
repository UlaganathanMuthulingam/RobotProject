*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    webdrivermanager.py



*** Test Cases ***
MyTestcase
    webdrivermanager.Get Browser Driver Path
    Open Browser    browser=Chrome    url=https://www.idp.com/india/user-signup/    executable_path=webdrivermanager.Get Browser Driver Path
    Maximize Browser Window
    Execute Javascript  var a=    return arguments[0].shadowRoot   ARGUMENTS  (//*[@class="md hydrated"])[1]
    log to console    a
    Scroll Element Into View   xpath=//*[@alt='Ready to Cook']
    Click Element    xpath=//*[@alt='Ready to Cook']
    Input Text    xpath=//*[@data-qa-label='StreetNumberTxt']    Triangle Drive, Taguig, Metro Manila
    Click Link    xpath=//*[@alt='Ready to Cook']