*** Settings ***
Documentation      Suite description
Library            Selenium2Library
Suite Teardown     Close Browser

*** Variables ***
${HOME}     file:///home/mob/Development/FirstLayout/index.html
${BROWSER}  Chrome

#SELECTORS:
${HEADER}           xpath=/html/body/nav
${LOGO}             xpath=/html/body/nav/a/img[@src='http://stylers.hu/addons/shared_addons/themes/stylers/img/logo_frontend.png']
${HEADER_NAVI}      xpath=/html/body/nav/ul/li/a
${FOUR_NAVI}        xpath=/html/body/nav/ul/li[4]/a

*** Test Cases ***
#First Test
#    Hello World Log

The Page Contains the Expected Elements
    Given User Navigate the Page
    Then User See the Header

The Header Contains the Expected Elements
    Then The Header Contains the Logo
    Then The Header Contains "4" Buttons

The Logo Navigates to the Top of the Page
    Given User Scroll Down
    When User Click on Logo
    Then The URL Contains "#top"
    And The Page Goes to Top

*** Keywords ***
#Hello World Log
#    Log     Hello World     WARN
#    Run Keyword And Continue On Failure     Fail    Big Fail
#    Pass Execution  Just pass

User Navigate the Page
    Open Browser    ${HOME}     ${BROWSER}
    #Maximize Browser Window

User See the Header
    Wait Until Page Contains Element    ${HEADER}

The Header Contains the Logo
    Wait Until Page Contains Element    ${LOGO}

The Header Contains "${num}" Buttons
    ${num}=     Convert To Integer  ${num}
    ${btns}=    Get Webelements     ${HEADER_NAVI}
    ${length}=  Get Length          ${btns}
    Should Be Equal     ${length}   ${num}

#The Header Contains Buttons
#    [Arguments]     ${num}

User Scroll Down
    Wait Until Page Contains Element    ${FOUR_NAVI}
    Click Element                       ${FOUR_NAVI}
    Sleep   1s
User Click on Logo
    Wait Until Page Contains Element    ${LOGO}
    Click Element                       ${LOGO}
The URL Contains "${tx}"
    ${URL}=    Get Location
    Should Contain  ${URL}  ${tx}
    #Wait Until Location Contains        ${tx}
The Page Goes to Top
    ${pos}=      Get Vertical Position     css=body
    Should Be Equal     ${pos}      ${66}