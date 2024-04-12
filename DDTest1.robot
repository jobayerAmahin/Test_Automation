*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/resources.robot
Suite Setup    Opening browser
Suite Teardown    Closing browsers
Test Template    invalid Login

*** Test Cases ***
right User wrong Pass       admin@yourstore.com         xyz
wrong User right Pass       ain@yourstore.com           admin
right User empty pass       admin@yourstore.com         ${EMPTY}
empty User right Pass       ${EMPTY}                    admin
wrong User wrong Pass       admin@yoursfdsdtore.com     ads


*** Keywords ***
invalid Login
    [Arguments]    ${username}      ${password}
    inputting Username    ${username}
    inputting password    ${password}
    Clicking Login Button
    Expected Error Message
