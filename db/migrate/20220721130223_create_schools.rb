# frozen_string_literal: true

class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools, &:timestamps
  end
end
