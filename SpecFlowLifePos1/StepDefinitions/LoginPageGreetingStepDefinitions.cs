using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.DevTools;
using OpenQA.Selenium.Interactions;
using System.Runtime.Intrinsics.X86;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;
using static System.Net.Mime.MediaTypeNames;

namespace LoginPageGreeting.StepDefinitions
{
    [Binding]
    class LoginPageGreetingStepDefinitions
    {
        IWebDriver driver = new ChromeDriver();

        [Given(@"I have navigated to login page")]
        public void GivenIHaveNavigatedToLoginPage()
        {
            driver.Navigate().GoToUrl("https://my.life-pos.ru/auth/login");
        }

        [When(@"I see the login page loaded")]
        public void GivenISeeTheLoginPageLoaded()
        {
            IWebElement greeting = driver.FindElement(By.ClassName("description"));
            if (greeting.Displayed == true)
                Console.WriteLine("Page loaded");
            else
                Console.WriteLine("Page failed to load");
        }

        [Then(@"I should see the right greeting")]
        public void IShouldSeeTheRightGreeting()
        {
            int dt = Convert.ToInt32(DateTime.Now.ToString("HH"));
            string greeting = driver.FindElement(By.ClassName("title")).Text;
            if (dt > 4 && dt < 12)
            {
                Assert.IsTrue(greeting.Contains("Доброе утро!"));
            }
            else if (dt > 11 && dt < 18)
            {
                Assert.IsTrue(greeting.Contains("Добрый день!"));
            }
            else if (dt > 17 && dt < 24)
            {
                Assert.IsTrue(greeting.Contains("Добрый вечер!"));
            }
            else
            {
                Assert.IsTrue(greeting.Contains("Доброй ночи!"));
            }
            driver.Close();
        }
    }
}