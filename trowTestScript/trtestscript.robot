# before running this suite.

*** Settings ***
Resource                 ../trowcommon/trobcommon.robot
Library                  DateTime
Library                  String
Library                  QWeb
Library                  QForce
Suite Setup              Setup Browser
Suite Teardown           End suite

*** Test Cases ***
Get RecordCount from the Table
    [Tags]               GRecCount
    [Documentation]      Get the Record count from the table
    Appstate             Home
    ClickText            Do not consent
    Sleep                4s
    ${CellValue}=        GetText                     //table[@id\='contactList']//td[text()\='Maria Anders']
    Log                  ${CellValue}
    UseTable             xpath\=//table[@id\='contactList']
    ${TableRecCount}=    GetTableRow                 //Last                       skip_header=True                 
    #${rows}=            GetTableRow                 //last                      skip_header=True
    Log                  Table Row Count is : ${TableRecCount}
    
    #${TableRecCount}=                               GetTableRow                 //table[@id\='contactList']//tr
    #Get Matching Xpath Count                        //table[@id\='contactList']//tbody//tr
    #${count}=           get element count           //table[@id\='contactList']//tbody//tr
    #${row}=             Get Count                   table[@id\='contactList']//tbody//tr
    #Log                 Table Record count : ${count}
    #//table[@id\='contactList']//tr
    #get element count                               //table[@id\='contactList']//tbody//tr
    #UseTable            //table[@id\='contactList']//td[text()\='Maria Anders']
    #UseTable            xpath\=//table[@id\='contactList']                      Maria Anders
