*** Variables ***

${search_field}  xpath=//html/body/nav/div/ul/li[4]/form/div/input
${search_button}  id=searchButton




*** Keywords ***

Search for a product
    [Arguments]    ${product_name}
    Input Text    ${search_field}    ${product_name}
    Click Element   ${search_button}
