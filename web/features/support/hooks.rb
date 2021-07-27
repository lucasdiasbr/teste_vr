Before do
  @principal_page = PrincipalPage.new
  @voce_page = VocePage.new
  @menu_page = MenuPage.new

  page.driver.browser.manage.window.maximize
  #page.current_window.resize_to(1440, 900)
end

After do
  temp_shot = page.save_screenshot("logs/temp_screenshot.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
end
