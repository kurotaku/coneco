class Post < ApplicationRecord
	skip_before_action :verify_authenticity_token
end
