Feature: Limit of symbols on Password input

	Заходим на страницу авторизации, вводим корретный номер телефона и пароль из 32+ знаков, смотрим сколько знаков в поле ввода пароля, должно быть 32.

@positive
@regress
Scenario Outline: Limit of symbols on Password input on Login Page
	Given I am on the login page
	When I enter my <username> and <password>
	Then I see only 32 symbols on password input
	Examples: Static
  | phone              | password                                               |
  | +7 (111) 111-11-11 | 1234567890123456789012345678901234567890111            |
  | +7 (999) 999-99-99 | waswaswaswasdddeeerrreeeerrreeerrreeerrreeerreeerrr11  |
  | +7 (888) 888-88-88 | +!@@##$!!@!@@@!+!@@##$!!@!@@@!+!@@##$!!@!@@@!+!@@##$!! |
