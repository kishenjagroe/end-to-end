*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  xpath=//ul[@class='nav navbar-top-links navbar-right']

*** Keywords ***
Navigate To
    go to  ${FRONT_OFFICE_URL}

Verify Page Loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}