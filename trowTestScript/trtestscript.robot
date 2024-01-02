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
    Sleep                4s
    #${TableRecCount}=                               GetTableRow                 //table[@id\='contactList']//tr
    #Get Matching Xpath Count                        //table[@id\='contactList']//tbody//tr
    #${count}=           get element count           //table[@id\='contactList']//tbody//tr
    #${row}=             Get Count                   table[@id\='contactList']//tbody//tr
    #Log                 Table Record count : ${count}
    #//table[@id\='contactList']//tr
    #get element count                               //table[@id\='contactList']//tbody//tr
    #UseTable            //table[@id\='contactList']//td[text()\='Maria Anders']
    #UseTable             xpath\=//table[@id\='contactList']                      Maria Anders
    ${CellValue}=        GetText        //table[@id\='contactList']//td[text()\='Maria Anders']
    Log                  ${CellValue}
    #${rows}=             GetTableRow                 //last                      skip_header=True
    #Log                  Table Row Count is : ${rows}
