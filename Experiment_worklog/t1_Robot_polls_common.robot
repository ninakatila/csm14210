*** Settings ****
Library    SeleniumLibrary


*** Variables ***
${OPEN URL}    http://127.0.0.1:8080/polls/
${BROWSER}    Chrome



*** Keywords ***
Open Browser To Start Page
    Open Browser    ${OPEN URL}    ${BROWSER}
    Start Page Should Be Open

Start Page Should Be Open
    Page Should Contain Link    id=ToQuestion

Go To Question Page
    Click Link    id=ToQuestion
    Question Page Should Be Open

Question Page Should Be Open
    Page Should Contain Link    id=QuestionList

Go To First Vote Page
    Click Link    link=Denmark
    Vote Page Should Be Open

Vote Page Should Be Open
    Page Should Contain Element    id=VoteForChoice

Vote For Choice1
    Click Element    id=choice1
    Click Element    id=VoteForChoice
    Result Page Should Be Open

Result Page Should Be Open
    Page Should Contain Link    id=VoteAgain

Vote Again
    Click Link    id=VoteAgain
    Question Page Should Be Open

Vote For Choice2
    Click Element    id=choice2
    Click Element    id=VoteForChoice
    Result Page Should Be Open

Go To Last Vote Page
    Click Link    link=Sweden
    Vote Page Should Be Open
