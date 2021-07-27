class PrincipalPage
  include Capybara::DSL

  def open
    visit "/"
  end

end
