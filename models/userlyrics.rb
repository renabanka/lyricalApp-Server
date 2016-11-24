class Userlyrics <  ActiveRecord::Base
	self.table_name = "userlyrics"

	belongs_to :account
	belongs_to :lyrics
end	