*** Settings ***

Library    AppiumLibrary

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***

Deve acessar a página Dialogs


    Wait Until Page Contains         COMEÇAR                                                                       
    Click Text                       COMEÇAR
    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/navView                                          

    Click Text                       DIALOGS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle    
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    DIALOGS


Deve acessar a tela de formulários

    Wait Until Page Contains         COMEÇAR                                                                       
    Click Text                       COMEÇAR
    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    
    Click Element                    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/navView                                          

    Click Text                       FORMS
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle    
    Element Text Should Be           id=io.qaninja.android.twp:id/toolbarTitle    FORMS



**** Keywords ***

Open Session

    Set Appium Timeout    5
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=uiautomator2
    ...                   platformName=Android
    ...                   deviceName=Pixel 2 API 28
    ...                   app=${EXECDIR}/app/twp.apk

Close Session
    Close Application