class Lyrics <  ActiveRecord::Base
	self.table_name = "lyrics"
	has_many :userlyrics
	has_many :accounts, through: :userlyrics
end	