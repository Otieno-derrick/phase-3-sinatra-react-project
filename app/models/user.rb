class User < ActiveRecord::Base
    belongs_to :company
end




# class Company < ActiveRecord::Base
#     has_many :users
# end