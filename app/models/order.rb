class Order < ApplicationRecord
  enum status: { "nopayment" => 0, "finished" => 1, "failed" => 2}
  
  class << self
    def statuses_i18n
      statuses.each_with_object({}) do |(k, _), obj|
        obj[I18n.t("order.status.#{k}")] = k
      end
    end
  end
  
  def status_i18n
    I18n.t("order.status.#{status}")
  end
end
