require 'rails_helper'

RSpec.describe Onepayment, type: :model do
  before do
    @onepayment=FactoryBot.build(:onepayment)
  end

  describe "投稿できない" do
    it "month_idが空だと投稿できない" do
      @onepayment.month_id=nil
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "Month can't be blank"
    end

    it "month_idが1だと投稿できない" do
      @onepayment.month_id=1
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "Month must be other than 1"
    end

    it "day_idが空だと投稿できない" do
      @onepayment.day_id=nil
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "Day can't be blank"
    end

    it "day_idが1だと投稿できない" do
      @onepayment.day_id=1
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "Day must be other than 1"
    end

    it "store_idが空だと投稿できない" do
      @onepayment.store_id=nil
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "Store can't be blank"
    end

    it "store_idが1だと投稿できない" do
      @onepayment.store_id=1
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "Store must be other than 1"
    end

    it "kisyu_idが空だと投稿できない" do
      @onepayment.kisyu_id=nil
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "Kisyu can't be blank"
    end

    it "kisyu_idが1だと投稿できない" do
      @onepayment.kisyu_id=1
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "Kisyu must be other than 1"
    end

    it "one_investmentが空だと投稿できない" do
      @onepayment.one_investment=""
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "One investment can't be blank"
    end

    it "one_recoveryが空だと投稿できない" do
      @onepayment.one_recovery=""
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "One recovery can't be blank"
    end

    it "one_balance_of_paymentが空だと投稿できない" do
      @onepayment.one_balance_of_payment=""
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "One balance of payment can't be blank"
    end

    it "one_rationaleが空だと投稿できない" do
      @onepayment.one_rationale=""
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "One rationale can't be blank"
    end

    it "user_idが空だと投稿できない" do
      @onepayment.user_id=""
      @onepayment.valid?
      expect(@onepayment.errors.full_messages).to include "User must exist"
    end
  end

end
