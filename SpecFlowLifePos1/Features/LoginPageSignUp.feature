Feature: Sign Up button on Login page

	Заходим на страницу авторизации, пытаемся нажать на кнопку создания аккаунта и перейти в страницу создания аккаунта.

@positive
@smoketest
Scenario: From Login page we try go to Sign Up page by Sign Up button
	Given I am on the login page
	When I click sign up button
	And I see the login page loaded
	Then I should go to sign up page