*** Settings ***
Library        SeleniumLibrary

*** Test Cases ***
Test Case 1
     Open Browser   http://127.0.0.1:8000/login   chrome
   Set Selenium Implicit Wait    5
   Sleep    2
   Input Text    //*[@id="email"]     admin@gmail.com
   Input Password    //*[@id="password"]    password 
   Click Element    xpath=/html/body/div/div/div/div/form/div[4]/button
   Sleep    5
   Click Element    xpath=/html/body/div[2]/div/div[6]/button[1]      
    sleep    2
   Click Element    xpath=/html/body/div[1]/div/div[1]/div/div[2]/div/div/div[2]/a
   Sleep    2        
   Click Element    xpath=/html/body/div[1]/div/div[2]/div[2]/div/div/div/div/div[1]/div[2]/a 
   Sleep    2     
   Click Element    xpath=/html/body/div[1]/div/div[2]/div[2]/div/div/div/form/div/div[1]/div[2]/div[1]/span/span[1]/span 
   Sleep    2    
   input Text    //*[@id="kt_body"]/span/span/span[1]/input    Telkomsel
   Sleep    2
    Press Key     //*[@id="kt_body"]/span/span/span[1]/input    \\13
    Sleep    2   
   Input Text    xpath=/html/body/div[1]/div/div[2]/div[2]/div/div/div/form/div/div[1]/div[2]/div[2]/input    10000
    Sleep    2   
   Input Text    xpath=/html/body/div[1]/div/div[2]/div[2]/div/div/div/form/div/div[1]/div[2]/div[3]/input    12000
    Sleep    2   
   Click Element    xpath=/html/body/div[1]/div/div[2]/div[2]/div/div/div/form/div/div[2]/button/span[1]    
    Sleep    2  
   Click Element    xpath=/html/body/div[4]/div/div[6]/button[1]     
   Close Browser
   Log    Test Completed
   