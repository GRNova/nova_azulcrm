package com.azulcrm.step_definitions;

import com.azulcrm.pages.BasePage;
import com.azulcrm.pages.LoginPage;
import com.azulcrm.pages.TimeAndReport;
import com.azulcrm.utilities.BrowserUtils;
import com.azulcrm.utilities.ConfigurationReader;
import com.azulcrm.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.junit.Assume;
import org.openqa.selenium.WebElement;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class US11_TimeAndReports_StepDefs extends BasePage {

    TimeAndReport timeAndReport = new TimeAndReport();
    LoginPage loginPage = new LoginPage();

    @Given("enters valid username and password")
    public void enters_valid_username_and_password() {
        loginPage.username.sendKeys(ConfigurationReader.getProperty("hr_user11"));
        loginPage.password.sendKeys(ConfigurationReader.getProperty("hr_password"));

    }

    @Given("click the login button")
    public void click_the_login_button() {
        loginPage.submit.click();
    }

//    @Given("Given users are on the homepage")
//    public void given_users_are_on_the_homepage() {
//        Assert.assertTrue(Driver.getDriver().getTitle().contains("Portal"));
//
//    }

    @When("users click the Time and Reports module")
    public void users_click_the_time_and_reports_module() {
        TimeAndReports.click();


    }

    @Then("verify the users see flowing 5 options")
    public void verify_the_users_see_flowing_5_options(List<String> expectedOptions) {
        List<String> actualOptions = BrowserUtils.getElementsText(timeAndReport.timeAndReport);
        Assert.assertEquals(expectedOptions, actualOptions);
    }

}



