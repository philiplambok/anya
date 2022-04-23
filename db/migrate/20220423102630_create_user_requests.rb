class CreateUserRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :user_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.string :request_url
      t.text :request_body
      t.string :request_method

      t.timestamps
    end
  end
end
