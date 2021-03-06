*** Settings ***
Documentation  This is my end to end suite
Resource  ../../../Data/InputData.robot
Resource  ../../../Resources/RobotFrameWorkTutorial/FrontOffice/FrontOfficeApp.robot
Resource  ../../../Resources/RobotFrameWorkTutorial/BackOffice/BackOfficeApp.robot
Resource  ../../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/EndToEnd/End_To_End.robot

*** Test Cases ***
*** Test Cases ***
Should be able to access both sites
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page