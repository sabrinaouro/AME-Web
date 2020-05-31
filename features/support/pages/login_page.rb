class LoginPage
    include Capybara::DSL
    def go
        visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
        
    end

    def with(email, pass)
        find("input[id=email]").set email
        find("input[id=passwd]").set pass
        click_button "Sign in"
    end

    def alert
        find('#center_column > div.alert.alert-danger > ol > li').text
    end
end