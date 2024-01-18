*** Settings ***
Library        SeleniumLibrary
*** Test Cases ***

Login1
   Open Browser     http://127.0.0.1:8000/login   chrome
   Set Selenium Implicit Wait    5
   Sleep    2
   Input Text    //*[@id="email"]   admin@gmail.com
   Input Password    //*[@id="password"]    password
   Click Element   //*[@id="tombol_login"]
   Sleep    5
   Close Browser
   Log    Test Completed
   

  
Login 3 
     Open Browser     http://127.0.0.1:8000/login   chrome  
   Set Selenium Implicit Wait    5
   Sleep    2
   Input Text    //*[@id="email"]     admin@gmail.com
   Input Password    //*[@id="password"]    password 
   Click Element    xpath=/html/body/div/div/div/div/form/div[4]/button
   Sleep    5
   Click Element    xpath=/html/body/div[2]/div/div[6]/button[1] 
   Sleep    2
   Click Element     xpath= /html/body/div[1]/div/div[1]/div/div[2]/div/div/div[2]/a
   Sleep    2
   Click Element    xpath=/html/body/div[1]/div/div[1]/div/div[2]/div/div/div[3]/a
   Sleep    2
   Click Element     xpath=/html/body/div[1]/div/div[2]/div[2]/div/div/div/div/div[2]/div/div[1]/table/tbody/tr[1]/td[9]/a
   Sleep    2
   Click Element    xpath=/html/body/div[1]/div/div[2]/div[2]/div/div/div/div/div[2]/div/div[1]/table/tbody/tr[1]/td[9]/div/div[3]/form/button
   Sleep    2
   Input Text        xpath=/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div/div/div[2]/div/div[2]/form/div[2]/input  89
   Sleep    5
   Input Text         xpath=/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div/div/div[2]/div/div[2]/form/div[3]/input  30/05/2023
   Sleep    5
   Click Element     xpath=/html/body/div[1]/div[1]/div[2]/div[2]/div/div/div/div/div[2]/div/div[2]/form/div[4]/button
   Sleep    5
   Close Browser
   Log    Test Completed
   
