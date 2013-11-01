class AddQuestionAndAnswerToKumos < ActiveRecord::Migration
  def change
    add_column :kumos, :question, :string
    add_column :kumos, :answer, :string
  end
end
