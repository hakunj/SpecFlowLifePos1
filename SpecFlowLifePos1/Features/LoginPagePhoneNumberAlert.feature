Feature: Incorrect Phone Number

	Заходим на страницу авторизации, вводим неправильный номер телефон и пароль, не можем подключиться,
	кнопка авторизции не активна, видим сообщение о не зарегистрированном номере.

@negative
@regress
Scenario Outline: Incorrect Phone number when try to login on Login page
	Given I am on the login page
	When I enter my <username> and <password>
	Then Login button is not active
	And I see wrong phone number alert 
	Examples: Static
  | phone     | password       |
  | 123123123 | 123123123!aezx |
  | 123123133 | asdasd5GG      |
  | 023123133 | admin123       |
