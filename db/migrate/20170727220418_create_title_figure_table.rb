class CreateTitleFigureTable < ActiveRecord::Migration
  def change
  	create_table :titles_figures do |t|
  		t.integer :title_id
  		t.integer :figure_id
  	end
  end
end
