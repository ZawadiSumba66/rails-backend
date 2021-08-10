# frozen_string_literal: true

class AddUserRefToTips < ActiveRecord::Migration[6.1]
  def change
    add_reference :tips, :user, null: false, foreign_key: true
  end
end
