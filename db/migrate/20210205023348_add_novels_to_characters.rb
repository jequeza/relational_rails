class AddNovelsToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_reference :characters, :novel, foreign_key: true
  end
end
