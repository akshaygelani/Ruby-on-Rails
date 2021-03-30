class Company < ApplicationRecord
  RISK_FACTORS = %w[LOW MEDIUM HIGH]

  has_many :stock_prices
  validates :name, presence: true, uniqueness: true
  validates :ticker_symbol, presence: true, uniqueness: true
  validates :risk_factor, presence: true, inclusion: { in: RISK_FACTORS }
  validate  :validate_length_of_ticker_symbol

  def validate_length_of_ticker_symbol
    if ticker_symbol.present?
      if ticker_symbol.size < 2 || ticker_symbol.size > 4
        errors.add(:ticker_symbol, 'Length Should be At least 2 or At Most 4')
      end
    end
  end
end
