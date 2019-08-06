class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.column(:name, :string)
      t.column(:summary, :text)
      t.column(:date, :date)
      t.column(:question_count, :integer)
      t.timestamps()
    end
  end
end
