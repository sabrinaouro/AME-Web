class NavBarView
    include Capybara::DSL

    def logged_user
        find('#header > div.nav > div > div > nav > div:nth-child(1) > a > span').text
    end

    def sign_out
        find('#header > div.nav > div > div > nav > div:nth-child(2) > a').text
    end

end