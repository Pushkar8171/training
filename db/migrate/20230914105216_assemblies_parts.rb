class AssembliesParts < ActiveRecord::Migration[7.0]
  def change
    add_reference :assemblies , :part , foreign_key:true
    add_reference :parts , :assembly , foreign_key:true

  end
end
