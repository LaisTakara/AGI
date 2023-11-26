*** Settings ***
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot    screenshot_root_directory=EMBED
Library    OperatingSystem

*** Variables ***
${BROWSER}                   chrome
${URL}                       https://blogdoagi.com.br/