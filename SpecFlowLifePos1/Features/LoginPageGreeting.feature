Feature: LoginPageGreeting
	Feature тест приветствия страницы логина Life-Pos 
	 Время 05:00-11:00  => Доброе утро!
	 Время 12:00-17:00  => Добрый день!
	 Время 18:00-22:00  => Доброе вечер!
	 Время 23:00-04:00  => Доброй ночи!
	 Пока не знаю как поменять время в данных которые посылает браузер, поэтому проверяет текущее время и отображение на сайте. 
	 Очень много времени ушло на настройку окружения.

@Positive
@SmokeTest
@Browser:Chrome
Scenario: Login Page 
	Given I have navigated to login page
	When I see the login page loaded
	Then I should see the right greeting
	#When The time on client is between <starTime> and <endTime>
	#Then I should see the right <greeting>

	#Examples: 
	#| starTime |		| endTime	|		| greeting      | 
	#| 05:59	|		| 11:00		|		| Доброе утро!  |	
	#| 12:59	|		| 17:00		|		| Добрый день!  |	
	#| 18:59	|		| 22:00		|		| Добрый вечер! |	
	#| 23:59	|		| 04:00		|		| Доброй ночи!  |	