class Title <ActiveRecord::Base
	has_many :titles_figures
	has_many :figures, through: :titles_figures
end