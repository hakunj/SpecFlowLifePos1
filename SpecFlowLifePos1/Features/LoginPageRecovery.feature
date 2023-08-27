Feature: Recovery button on Login page

	Заходим на страницу авторизации, пытаемся нажать на кнопку восстановления пароля и перейти в страницу восстановления.

@positive
@smoketest
Scenario: From Login page we try go to Recovery page by recovery button
	Given I am on the login page
	When I click recovery button
	And I see the login page loaded
	Then I should go to recovery page