class Account <  ActiveRecord::Base
    self.table_name = "accounts"
    has_many :userlyrics
    has_many :lyrics, through: :userlyrics    
end