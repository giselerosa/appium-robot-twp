*** Settings ***

Library    AppiumLibrary


*** Test Cases ***

Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=uiautomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel 2 API 28
    ...                 app=${EXECDIR}/app/twp.apk

    Wait Until Page Contains    Training Wheels Protocol    5
    Wait Until Page Contains    Mobile Version
    Close Application