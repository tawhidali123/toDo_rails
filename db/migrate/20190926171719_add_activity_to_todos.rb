class AddActivityToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :activity, :string
  end
end
