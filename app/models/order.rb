class Order < ApplicationRecord
  enum status: { "nopayment" => 0, "finished" => 1, "failed" => 2}
end
