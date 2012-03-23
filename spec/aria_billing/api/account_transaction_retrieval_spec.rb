require 'spec_helper'

describe "Account Transaction Retrieval" do

  def api
    AriaBilling
  end

  describe "self.get_acct_has_ordered_sku(params)",:vcr do 
    it "Indicates whether an account has ever ordered or paid for a specified inventorty item (SKU)" do
      params = { "acct_no" => 1, "sku" => 'Test' }	
      response = api.get_acct_has_ordered_sku params

      response.should have_key("error_code")
      response.should have_key("error_msg")
      response.should have_key("ordered_ind")
      response.should have_key("billed_ind")
      response.should have_key("paid_ind")
    end
  end
end