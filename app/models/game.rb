class Game < ActiveRecord::Base
	validates :detail, presence:true,
						length: {minimum:5}


	validates :name, presence:true,
						length: {minimum:3}

end
