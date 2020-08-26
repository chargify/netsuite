
require 'spec_helper'

describe NetSuite::Records::CustomerDeposit do
  let(:deposit) { NetSuite::Records::CustomerDeposit.new }

  it 'has all the right fields' do
    [
      :created_date, :last_modified_date, :status, :payment, :tran_date, :exchange_rate, :undep_funds, :memo,
      :check_num, :klass, :currency_name, :is_recurring_payment, :tran_id, :auth_code,
      :cc_approved, :cc_avs_street_match, :cc_avs_zip_match, :cc_expire_date, :cc_is_purchase_card_bin, :cc_name, :cc_number,
      :cc_process_as_purchase_card, :cc_security_code, :cc_security_code_match, :cc_street, :cc_zip_code, :charge_it
    ].each do |field|
      expect(deposit).to have_field(field)
    end
  end

  it 'has all the right record refs' do
    [
      :customer, :sales_order, :account, :department, :payment_method,
      :custom_form, :currency, :posting_period, :subsidiary, :location,
      :payment_option, :deposit_transaction
    ].each do |record_ref|
      expect(deposit).to have_record_ref(record_ref)
    end
  end
end
