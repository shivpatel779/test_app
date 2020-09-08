class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
    	t.string :name
    	t.integer :age
    	t.string :dob
    	t.string :location
    	t.string :gender
    	t.boolean :availability, default: false
    	t.attachment :image
    	t.attachment :file_attachment
      t.timestamps
    end
  end
end
