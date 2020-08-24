*** Settings ***

Library     AppiumLibrary
Resource    helpers.robot

**** Keywords ***

Open Session

    Set Appium Timeout    5
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=uiautomator2
    ...                   platformName=Android
    ...                   deviceName=Pixel 2 API 28
    ...                   app=${EXECDIR}/app/twp.apk
    Get Started

Close Session
    Close Application
