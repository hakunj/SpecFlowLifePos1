Feature: Incorrect Password alert

	Заходим на страницу авторизации, вводим корретный номер телефона и пароль менее 6 знаков, не можем подключиться,
	кнопка авторизции не активна, видим сообщение о пароле с менее 6 знаками.

@negative
@regress
Scenario Outline: Incorrect Password Alert on Login Page
	Given I am on the login page
	When I enter my <username> and <password>
	Then Login button is not active
	And I see wrong phone number alert 
	Examples: Static
  | phone              | password |
  | +7 (111) 111-11-11 | ' '      |
  | +7 (111) 111-11-11 | 1        |
  | +7 (111) 111-11-11 | admin    |
