module API
	module v1
		class Contacts < Grape::API
			include API::v1::Defaults

			resource :contacts do
				desc "Return all contacts"
				get "", root: :contacts do
					Contact.all
				end

				desc "Return a contact"
				params do
					requires :id, type: String, desc: "ID of the contact"
				end
				get ":id", root: "contact" do
					Contact.where(id: permitted_params[:id]).first!
				end
			end
		end
	end
end