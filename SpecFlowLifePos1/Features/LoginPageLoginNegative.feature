Feature: Incorrect Login

	Заходим на страницу, пытаемся безуспешно войти.
	1 - пустое значение пароля
	2 - менее 5 знаков в пароле
	3 - ошибка в логине

@negative
@regress
Scenario Outline: Incorrect Login to the system
	Given I am on the login page
	When I enter my <username> and <password>
	Then I should be not logged in
	Examples: Static
  |  username	 |	password	 |
  |   admin		 |   	NULL	 | 
  |   testdata   |    5  |  
  |   adm1n   |    admin  |  
