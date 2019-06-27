class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.integer :id_blog
      t.string :nombre, limit: 100
      t.string :email, limit: 100
      t.text :comentario

      t.timestamps
    end
  end
end
