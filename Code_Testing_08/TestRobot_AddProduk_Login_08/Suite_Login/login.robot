*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            http://localhost/test/testing_pkpl/public/login
${EXCEL_FILE}     login.xlsx
${SHEET_NAME}     Sheet1

*** Test Cases ***
Test Suite 1
    Test Suite  2
Test Suite 2
    Test Suite  3
Test Suite 3
    Test Suite  4
Test Suite 4
    Test Suite  5
Test Suite 5
    Test Suite  6
Test Suite 6
    Test Suite  7
Test Suite 7
    Test Suite  8
Test Suite 8
    Test Suite  9
Test Suite 9
    Test Suite  10
Test Suite 10
    Test Suite  11
Test Suite 11
    Test Suite  12
Test Suite 12
    Test Suite  13
Test Suite 13
    Test Suite  14
Test Suite 14
    Test Suite  15
Test Suite 15
    Test Suite  16
Test Suite 16
    Test Suite  17
Test Suite 17
    Test Suite  18
Test Suite 18
    Test Suite  19
Test Suite 19
    Test Suite  20
Test Suite 20
    Test Suite  21
Test Suite 21
    Test Suite  22
Test Suite 22
    Test Suite  23
Test Suite 23
    Test Suite  24
Test Suite 24
    Test Suite  25
Test Suite 25
    Test Suite  26
Test Suite 26
    Test Suite  27
Test Suite 27
    Test Suite  28
Test Suite 28
    Test Suite  29
Test Suite 29
    Test Suite  30
Test Suite 30
    Test Suite  31
Test Suite 31
    Test Suite  32
Test Suite 32
    Test Suite  33
Test Suite 33
    Test Suite  34
Test Suite 34
    Test Suite  35
Test Suite 35
    Test Suite  36
Test Suite 36
    Test Suite  37
Test Suite 37
    Test Suite  38
Test Suite 38
    Test Suite  39
Test Suite 39
    Test Suite  40
Test Suite 40
    Test Suite  41
Test Suite 41
    Test Suite  42
Test Suite 42
    Test Suite  43
Test Suite 43
    Test Suite  44
Test Suite 44
    Test Suite  45
Test Suite 45
    Test Suite  46
Test Suite 46
    Test Suite  47
Test Suite 47
    Test Suite  48
Test Suite 48
    Test Suite  49
Test Suite 49
    Test Suite  50
Test Suite 50
    Test Suite  51
Test Suite 51
    Test Suite  52
Test Suite 52
    Test Suite  53
Test Suite 53
    Test Suite  54
Test Suite 54
    Test Suite  55
Test Suite 55
    Test Suite  56
Test Suite 56
    Test Suite  57
Test Suite 57
    Test Suite  58
Test Suite 58
    Test Suite  59
Test Suite 59
    Test Suite  60
Test Suite 60
    Test Suite  61
Test Suite 61
    Test Suite  62
Test Suite 62
    Test Suite  63
Test Suite 63
    Test Suite  64
Test Suite 64
    Test Suite  65
Test Suite 65
    Test Suite  66
Test Suite 66
    Test Suite  67
Test Suite 67
    Test Suite  68
Test Suite 68
    Test Suite  69
Test Suite 69
    Test Suite  70
Test Suite 70
    Test Suite  71
Test Suite 71
    Test Suite  72
Test Suite 72
    Test Suite  73
Test Suite 73
    Test Suite  74
Test Suite 74
    Test Suite  75
Test Suite 75
    Test Suite  76
Test Suite 76
    Test Suite  77
Test Suite 77
    Test Suite  78
Test Suite 78
    Test Suite  79
Test Suite 79
    Test Suite  80
Test Suite 80
    Test Suite  81
Test Suite 81
    Test Suite  82
Test Suite 82
    Test Suite  83
Test Suite 83
    Test Suite  84
Test Suite 84
    Test Suite  85
Test Suite 85
    Test Suite  86
Test Suite 86
    Test Suite  87
Test Suite 87
    Test Suite  88
Test Suite 88
    Test Suite  89
Test Suite 89
    Test Suite  90
Test Suite 90
    Test Suite  91
Test Suite 91
    Test Suite  92
Test Suite 92
    Test Suite  93
Test Suite 93
    Test Suite  94
Test Suite 94
    Test Suite  95
Test Suite 95
    Test Suite  96
Test Suite 96
    Test Suite  97
Test Suite 97
    Test Suite  98
Test Suite 98
    Test Suite  99
Test Suite 99
    Test Suite  100
Test Suite 100
    Test Suite  101

*** Keywords ***
Test Suite  
    [Arguments]    ${index}
    ${username}      Read Excel    ${CURDIR}${/}..\\Data\\Data.xlsx    Login    ${index}    1
    ${password}      Read Excel    ${CURDIR}${/}..\\Data\\Data.xlsx    Login    ${index}    2

    Open Browser    ${URL}    ${BROWSER}
    Input Text    //*[@id="email"]    ${username}
    Input Text    //*[@id="password"]    ${password}
    Click Element    //*[@id="tombol_login"]
    Sleep    5
    Close Browser

Read Excel
    [Arguments]    ${filepath}    ${sheetname}    ${rownum}    ${colnum}
    Open Excel Document    ${filepath}    1
    Get Sheet    ${sheetname}
    ${data}    Read Excel Cell    ${rownum}    ${colnum}
    [Return]    ${data}
    Close Current Excel Document
