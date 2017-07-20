class LoginPage < SitePrism::Page

set_url 'https://the-internet.herokuapp.com/login'
element :username_field, '#username'
element :password_field, '#password'
element :login_btn, 'button.radius' 
element :message_txt, '#flash'

def realiza_login(u, p)
    username_field.set u
    password_field.set p
    login_btn.click
end

end

class SecurePage < SitePrism::Page
    element :logout_btn, 'a.button.secondary.radius'
    element :message_txt, '#flash'

end
