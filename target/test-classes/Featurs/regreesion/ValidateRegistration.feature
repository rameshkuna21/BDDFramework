Feature: To Validate Registration

@wip2907

Scenario: To Validate registration data with valid details

Given user starts "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
When user clicks linktext using xpath "//a[text()='New User Register Here']"
Then user validate URL to be "https://adactinhotelapp.com/Register.php"
When user enters details in Registration form
| ramesh21 | Ramesh@1610 | Ramesh@1610 | Ramesh kuna | abcd@gmail.com | reest |

@wip2907a

Scenario: To Validate registration data with valid details

Given user starts "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
When user clicks linktext using xpath "//a[text()='New User Register Here']"
Then user validate URL to be "https://adactinhotelapp.com/Register.php"
When user enters details in Registration form2
| username | password | Confirm password| Fullname| Email | captcha |
| ramesh21 | Ramesh@1610 | Ramesh@1610 | Ramesh kuna | abcd@gmail.com | reest |