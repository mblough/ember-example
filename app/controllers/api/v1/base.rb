require "grape-swagger"

module API
	module v1
		class Base < Grape::API
			mount API::v1::Contacts
			# mount API::v1::AnotherResource

			add_swagger_documentation(
				api_version: "v1"
				hide_documentation_path: true,
				mount_path: "/api/v1/swagger_doc",
				hide_format: true
			)
		end
	end
end