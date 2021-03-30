class AddRiskFactorToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :risk_factor, :string
  end
end
