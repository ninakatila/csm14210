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
    Page Should Contain Link    id=ToQuestionList

Go To Question Page
    Click Link    id=ToQuestionList
    Question Page Should Be Open

Question Page Should Be Open
    Page Should Contain Link    id=ListOfQuestions

Go To First Vote Page
    Click Link    link=Denmark
    Vote Page Should Be Open

Vote Page Should Be Open
    Page Should Contain Element    id=Vote

Vote For Choice1
    Click Element    id=choice1
    Click Element    id=Vote
    Result Page Should Be Open

Result Page Should Be Open
    Page Should Contain Link    id=NewVote

Vote Again
    Click Link    id=NewVote
    Question Page Should Be Open

Vote For Choice2
    Click Element    id=choice2
    Click Element    id=Vote
    Result Page Should Be Open

Go To Last Vote Page
    Click Link    link=Norway
    Vote Page Should Be Open
