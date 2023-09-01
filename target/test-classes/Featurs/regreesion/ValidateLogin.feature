Feature: To Validate Login in OrangeHRM 

@smoke

Scenario: To Validate Login using Valid credentials

Given user starts "chrome" browser
And user launch app using url "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
When user enters Text "Admin" using Xpath "//input[@name='username']"
And user enters Text "admin123" using Xpath "//input[@name='password']"
And user clicks button using Xpath "//button[@type='submit']"
Then user validate URL to be "https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index"


Scenario Outline: To Validate Login using Invalid credentials

Given user starts "chrome" browser
And user launch app using url "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
When user enters Text '<username>' using Xpath "//input[@name='username']"
And user enters Text '<password>' using Xpath "//input[@name='password']"
And user clicks button using Xpath "//button[@type='submit']"
Then user validate URL to be '<expectedURL>'

Examples:
| username | password | expectedURL |
| admin | admin456 | https://opensource-demo.orangehrmlive.com/web/index.php/auth/login |
| admin777 | admin123 | https://opensource-demo.orangehrmlive.com/web/index.php/auth/login |
|admin777 | admin456 | https://opensource-demo.orangehrmlive.com/web/index.php/auth/login |