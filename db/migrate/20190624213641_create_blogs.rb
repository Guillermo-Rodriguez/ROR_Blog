class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :titulo, limit: 70
      t.text :portada
      t.text :contenido
      t.integer :categoria_id
      t.integer :usuario_id
      t.integer :n_comentarios

      t.timestamps
    end
  end
end
