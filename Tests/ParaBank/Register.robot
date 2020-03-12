*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${NUMBER}
${USERNAME} =  Dasdas
${PASSWORD} =  Test123!!
${SUCCESS_MESSAGE} =  Your account was created successfully. You are now logged in.

*** Test Cases ***
Should be able to see success message when submitting contact form with valid information
    [tags]  Smoke
    go to  https://parabank.parasoft.com/parabank/register.htm
    ${NUMBER} =	Evaluate	random.randint(0, 10000)	modules=random
    ${USERNAME} =  Catenate  SEPARATOR=  ${USERNAME}  ${NUMBER}
    Input Text  id=customer.firstName  Kishen
    Input Text  id=customer.lastName  Jagroe
    Input Text  id=customer.address.street  Amazing Street 10
    Input Text  id=customer.address.city  Amsterdam
    Input Text  id=customer.address.state  Noord-Holland
    Input Text  id=customer.address.zipCode  1107VB
    Input Text  id=customer.phoneNumber  0123456789
    Input Text  id=customer.ssn  Number
    Input Text  id=customer.username  ${USERNAME}
    Input Text  id=customer.password  ${PASSWORD}
    Input Text  id=repeatedPassword  ${PASSWORD}
    Click Button  xpath=//input[@value="Register"]
    Element Should Contain  xpath=//div[@id="rightPanel"]/p  ${SUCCESS_MESSAGE}

Should be able to login with valid credentials
    go to  https://parabank.parasoft.com/parabank/index.htm
    Input Text  xpath=//input[@name="username"]  Kishen
    Input Text  xpath=//input[@name="password"]  Jagroe
    Click Button  xpath=//input[@value="Log In"]
    Sleep  3s











