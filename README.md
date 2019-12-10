# Robot-Framework

Hello and thank you for reviewing my submission.

I have automated test scenarios that I have included in Excel with Robot Framework, a really usefull framework on top of Selenium and based on Python.
Below are steps you need to take to run my scripts from your computer.

1. Download all the files from Git, and extract it in C:/
    The path should look like this: C:\test
    The .bat files are used to run the scripts, you can save them anywhere.
    
    If you cannot save the files to C:\ feel free to save it anywhere else, but you will need to open the .bat files.
    After you open 'Robot framework - Login.bat' you will see:
    
    @echo off
    cd C:\test
    call robot -d results C:\test\Tests\Login.robot
    
    you will need to change C:\test for your desired directory.
    Please do the same for Robot Framework - Registration.bat
    
2. If you dont have python on your computer already, download it below:
https://www.python.org/downloads/
3. During python instalation remember to add it to PATH, and install PIP. If you dont have PIP you need to download it separately from https://pypi.org/project/pip/, and add it to PATH.
4. After you have installed Python + PIP, open Command Prompt: Start -> cmd.
5. Type in: pip install robotframework-selenium2library
   If you are behind proxy, you need to add --proxy host:port
6. The tests are prepared for chrome browser, so you will need a chrome webdriver from here:
https://sites.google.com/a/chromium.org/chromedriver/downloads
After you have downloaded the driver:
- Create C:\bin folder and add it to PATH
- Extract the driver there

If for whatever reason you can't use chrome, please download your browser specific webdriver, then add it to bin.
You will also need to go to:
C:\test\Tests
open every file there, and change variable ${BROWSER} from chrome to ex. 'firefox' or 'ie'.

After all that you will be ready to go, all you need to do is double click the .bat files.
If you want to see the log of the tests go to C:\test\results and open the file log.html in browser.

If the tests are not working, please message me, I will be happy to help :)
Thank you again!
