*** Settings ***
Library           SeleniumLibrary
*** Variables ***
*** Test Cases ***
login codecademy
    Open Browser     https://www.tripadvisor.in/       chrome
    maximize browser window
    sleep  3s
    scroll element into view    //*[@id="lithium-root"]/main/div[4]/div[3]/div[2]/div/div
    sleep  3s
    #click element   //*[@id="lithium-root"]/main/div[4]/div[3]/div[1]/div/span/div/a
    #sleep  3s
    click element  //*[@id="lithium-root"]/footer/div/div
    sleep  2s
    mouse down on link  //*[@id="footer_section_explore_contents"]/div/ul/li[2]/a
    Sleep   2s
    click element  //*[@id="footer_section_explore_contents"]/div/ul/li[2]/a
    sleep  2s
    scroll element into view  //*[@id="lithium-root"]/main/div[2]/div[5]
    sleep  2s
    ${x}=       Get Horizontal Position     //*[@id="lithium-root"]/main/div[2]/div[4]/div[1]/div/div[1]/div/div/div/div/a/span
    ${y}=       Get Vertical Position       //*[@id="lithium-root"]/main/div[2]/div[4]/div[1]/div/div[1]/div/div/div/div/a/span
    Execute Javascript    window.scrollTo(${x},${y})
    log to console  (${x},${y})
    Sleep   3s
    Close Browser
