package com.azulcrm.pages;

import com.azulcrm.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

public class ChatAndCallsPage extends BasePage {
    public ChatAndCallsPage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }
    @FindBy(xpath = "//div[@class='bx-desktop-appearance-tab']/div[contains(@id,'bx-desktop-tab')]")
    public List<WebElement> leftSideOptions;

}
