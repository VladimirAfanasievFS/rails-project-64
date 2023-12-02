# frozen_string_literal: true

class AddAuthorToPostComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :post_comments, :creator, foreign_key: { to_table: :users }
  end
end
