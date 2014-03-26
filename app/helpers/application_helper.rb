module ApplicationHelper
  def intellinav
    links = ''
    if @current_user
      links += "<li>#{ link_to('Log out ' + @current_user.first_name, login_path, :method => :delete, :confirm => 'Really log out?') }</li>"
    else
      links += "<li>#{ link_to('Sign in', login_path) }</li>
      <li>#{ link_to('Sign up', new_user_path) }</li>"
    end
  
    links
  end
end
