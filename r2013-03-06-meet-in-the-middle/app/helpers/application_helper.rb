module ApplicationHelper
   def navlet
    links = ""

    links += "<li>#{link_to('Home', root_path)}</li>"

    if @auth.present?
      links += "<li>#{link_to('Users', users_path)}</li>"
      links += "<li>#{link_to('Logout: ' + @auth.name, login_path, :method => :delete)}</li>"

    else
      links += "<li>#{link_to('Sign In', login_path)}</li>"
      links += "<li>#{link_to('Sign Up', new_user_path)}</li>"

    end
  end
end
