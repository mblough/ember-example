module API
	class Base < Grape::API
		mount API::v1::Base
	end
end