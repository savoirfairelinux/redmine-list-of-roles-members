require 'redmine'

require 'roles_controller_patch'

object_to_prepare = Rails.configuration
Redmine::Plugin.register :sfl_list_of_roles_members do

    name 'SFL List of Roles Members'
    author 'David Côté-Tremblay'
    description 'Show a list of all the members of a role grouped by project.'
    version '0.0.1'
    url 'https://gitlab.savoirfairelinux.com/redmine/SFL-List-of-Roles-Members'
    author_url 'http://savoirfairelinux.com'

end
