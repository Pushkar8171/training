class AssembliesParts < ActiveRecord::Migration[7.0]
  def change
    add_reference :assemblies , :parts , foreign_key:true
    add_reference :parts , :assemblies , foreign_key:true

  end
end
