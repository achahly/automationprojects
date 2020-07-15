*** Settings ***
Resource    ${CURDIR}/../resources/keywords/shared_keywords.txt
Resource    ${CURDIR}/../resources/keywords/authentication_keywords.txt
Suite Setup    Open My browser

*** Test Cases ***
Create A Customer Account 
    [Tags]    smoke test
    Go To Register Page  
    Fill The Registration Form    ${F_NAME}    ${L_NAME}     ${ADDRESS}    ${CITY}    ${STATE}    ${ZIP}     ${PHONE_NUMBER}     ${SSN}      ${N_USERNAME}    ${N_PASSWORD}     
    [Teardown]    Log Out From Your Account      
    
Login with Customer Account
    [Tags]    smoke test
    Login To Your Account    ${USERNAME}    ${PASSWORD} 
    [Teardown]    Log Out From Your Account
    
Login with Wrong Customer Account
    [Tags]    smoke test
    Login To Your Account    ${W_USERNAME}    ${W_PASSWORD}     
    Click Login Button
    Verify Error Message
    
    