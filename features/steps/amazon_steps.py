from selenium.webdriver.common.by import By
from behave import given, when, then
from time import sleep


SEARCH_INPUT = (By.ID, 'twotabsearchtextbox')
SEARCH_BTN = (By.ID, 'nav-search-submit-button')
SEARCH_RESULT_TEXT = (By.XPATH, "//span[@class='a-color-state a-text-bold']")


@given('Open Amazon page')
def open_amazon(context):
    context.driver.get('https://www.amazon.com/')
    sleep(1)


@when('Search for {keyword}')
def search_amazon(context, keyword):
    context.driver.find_element(*SEARCH_INPUT).send_keys(keyword)
    context.driver.find_element(*SEARCH_BTN).click()
    sleep(1)


@then('Verify search results for {expected_result} are shown')
def verify_search_results(context, expected_result):
    actual_result = context.driver.find_element(*SEARCH_RESULT_TEXT).text
    assert expected_result == actual_result, f'Error! Actual text {actual_result} does not match expected {expected_result}'
