class Figure <ActiveRecord::Base
	has_many :titles_figures
	has_many :titles, through: :titles_figures
	has_many :landmarks
end