require_dependency 'roles_controller'

module RolesControllerPatch

	def self.included(base)
		base.send(:include, InstanceMethods)
	end

	module InstanceMethods

		def list_members
			@role = Role.find(params[:id])
			@projects_members = Member.joins(:roles, :user).where(:roles => {:id => @role}).group(:users, :id).group_by(&:project)
		end

	end
end

RolesController.send :include, RolesControllerPatch
