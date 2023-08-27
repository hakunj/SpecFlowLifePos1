Feature: Incorrect Phone Number Format

	Заходим на страницу авторизации, вводим неправильный номер телефон и пароль, не можем подключиться,
	кнопка авторизции не активна, видим сообщение о не зарегистрированном номере.

@negative
@regress
Scenario Outline: Incorrect Phone number Format when try to login on Login page
	Given I am on the login page
	When I enter my <username> and <password>
	Then Login button is not active
	And I see wrong phone number format alert 
	Examples: Static
  | phone              | password       |
  | 1                  | 123123123!aezx |
  | +7 (123) _12-31-23 | asdasd5GG      |
  | 231411111          | admin123       |
