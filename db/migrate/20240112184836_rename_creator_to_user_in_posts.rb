# frozen_string_literal: true

class RenameCreatorToUserInPosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :creator_id, :user_id
  end
end
