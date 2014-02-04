class Setdefaulttitleforblock < ActiveRecord::Migration
  def change
    change_column :blocks, :title, :string, default: 'Preencha o Título do Bloco'
  end
end
