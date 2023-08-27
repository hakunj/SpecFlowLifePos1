Feature: Login

	Заходим на страницу, пытаемся успешно войти.
	Предпологается что данные корректны. Пароль подобрать пока не удалось =) 

@positive
@smoketest
Scenario Outline: Login to the system
	Given I am on the login page
	When I enter my <phone> and <password>
	Then I should be logged in
	Examples: Static
  | phone              | password   |
  | 1111111111         | 1111111111 |
  | +7 (999) 999-99-99 | 1111111111 |