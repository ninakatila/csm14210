*** Settings ****
Documentation    Test cases for Polls app
Library    SeleniumLibrary
Resource    Robot_polls_common.robot
Suite Teardown    Close Browser


*** Test Cases ***
User Opens Polls
    [Tags]    t1
    Open Browser to start page
    Go To Question Page

Voting First Question
    [Tags]    t1
    Go To First Vote Page
    Vote For Choice1
    Vote Again
    Go To First Vote Page
    Vote For Choice2

Voting Last Question
    [Tags]    t1
    Vote Again
    Go To Last Vote Page
    Vote For Choice1
    Vote Again
    Go To Last Vote Page
    Vote For Choice2
