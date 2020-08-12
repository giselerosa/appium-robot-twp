*** Settings ***

Library    AppiumLibrary

*** Variables ***

${START}              COMEÇAR                                                                       
${MENU_HAMBURGUER}    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}           id=io.qaninja.android.twp:id/navView 

**** Keywords ***

Get Started
    Wait Until Page Contains    ${START}    
    Click Text                  ${START}    

Open Nav
    Wait Until Element Is Visible    ${MENU_HAMBURGUER}    
    Click Element                    ${MENU_HAMBURGUER}
    Wait Until Element Is Visible    ${NAV_VIEW} 

Open Session

    Set Appium Timeout    5
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=uiautomator2
    ...                   platformName=Android
    ...                   deviceName=Pixel 2 API 28
    ...                   app=${EXECDIR}/app/twp.apk

Close Session
    Close Application