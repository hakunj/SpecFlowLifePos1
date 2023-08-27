Feature: Alert about space in Password input

	Заходим на страницу авторизации, вводим корретный номер телефона и пароль который содержит пробел. Видим алерт о недопустимости пробела в пароле.

@negative
@regress
Scenario Outline: Alert about space in Password input on Login Page
	Given I am on the login page
	When I enter my <username> and <password>
	Then I see alert about spaces in my password
	Examples: Static
  | phone              | password           |
  | +7 (111) 111-11-11 | 12345 qweqwe       |
  | +7 (555) 555-55-55 | 'drop table users  |
  | +7 (999) 999-99-99 | get user id please |