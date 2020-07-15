*** Settings ***
Resource    ${CURDIR}/../resources/keywords/shared_keywords.txt
Resource    ${CURDIR}/../resources/keywords/account_services_keywords.txt
Resource    ${CURDIR}/../resources/keywords/authentication_keywords.txt
Suite Setup   Run Keywords    Open My Browser    AND    Login To Your Account    ${USERNAME}    ${PASSWORD}      
Suite Teardown    Log Out From Your Account

*** Test Cases ***

Check Your Account Overview
    [Tags]    TNR
    Go to Account Over View
    Verify Your Account 
    
Transfer Funds
    [Tags]    TNR
    Go to Transfer Funds 
    Make A Transfer   ${AMOUNT}    ${FROM ACCOUNT}    ${TO ACCOUNT}    
 