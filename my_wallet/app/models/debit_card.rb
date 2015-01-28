class DebitCard < ActiveRecord::Base


  def self.total
    total = 0
    DebitCard.all.each do |transaction|
      total += transaction.deposits.to_f - transaction.withdraws.to_f
    end
    return total
  end
end
