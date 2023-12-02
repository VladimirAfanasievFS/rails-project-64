# frozen_string_literal: true

class CreatePostLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :post_likes do |t|
      t.belongs_to :post, null: false, foreign_key: true
      t.belongs_to :creator, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
