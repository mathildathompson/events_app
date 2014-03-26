module ApplicationHelper
  def intellinav
    links = ''
    if @current_user
      links += "<li>#{ link_to('Hi ' + @current_user.first_name + '... log out', login_path, :method => :delete) }</li>"
    else
      links += "<li>#{ link_to('Sign in', login_path) }</li>
      <li>#{ link_to('Sign up', new_user_path) }</li>"
    end
  
    links
  end
end
