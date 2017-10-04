module SessionHelpers

 def sign_in(last_name:, password:)
   visit '/sessions/new'
   fill_in :last_name, with: last_name
   fill_in :password, with: password
   click_button 'Sign in'
 end

 def sign_up(name: 'Jack Bauer',
             last_name: 'Jack24',
             email: 'jbauer@ctu.com',
             password: 'damn_it!',
             password_confirmation: 'damn_it!')
   visit '/users/new'

   fill_in :name,        with: name
   fill_in :last_name,   with: last_name
   fill_in :email,       with: email
   fill_in :password,    with: password
   fill_in :password_confirmation, with: password_confirmation
   click_button 'Sign up'
 end
end
