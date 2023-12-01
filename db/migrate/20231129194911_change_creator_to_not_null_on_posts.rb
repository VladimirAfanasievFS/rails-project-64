# frozen_string_literal: true

class ChangeCreatorToNotNullOnPosts < ActiveRecord::Migration[7.0]
  def change
    change_column_null :posts, :creator_id, false
  end
end
