#
#    Copyright (C) 2017 Savoir-faire Linux Inc. (<www.savoirfairelinux.com>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
require_dependency 'roles_controller'

module RolesControllerPatch

	def self.included(base)
		base.send(:include, InstanceMethods)
	end

	module InstanceMethods

		def list_members
			@role = Role.find(params[:id])
			@projects_members = Member.joins(:roles, :user).where(:roles => {:id => @role}).group(:id).group_by(&:project)
		end

	end
end

RolesController.send :include, RolesControllerPatch
