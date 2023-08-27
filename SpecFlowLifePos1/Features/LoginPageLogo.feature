Feature: Login page logotype and password type

	На странице авторизации проверяем есть ли логотип компании и является ли тип текста в вводе пароля password.

@smoke
@positive
Scenario: On Login page we try to find company logotype
	Given I am on the login page
	When I see the login page loaded
	Then I should see the logotype
	And I see type of Password Input place is 'password'
