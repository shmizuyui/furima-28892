require 'rails_helper'
describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    context '商品出品がうまくいくとき' do
      it "textとimage、description、category、condition、postage_payer、handing_time、priceの情報があれば出品できる" do
        expect(@item).to be_valid
      end
    end
    context '商品出品がうまくいかないとき' do
      it "imageが空だと出品できない" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it "textが空だと出品できない" do
        @item.text = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Text can't be blank")
      end
      it "descriptionが空だと出品できない" do
        @item.description = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Description can't be blank")
      end
      it "categoryを選択していないと出品できない" do
        @item.category_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Category Select")
      end
      it "conditionを選択していないと出品できない" do
        @item.condition_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Condition Select")
      end
      it "postage_payerを選択していないと出品できない" do
        @item.postage_payer_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Postage payer Select")
      end
      it "prefectureを選択していないと出品できない" do
        @item.prefecture_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture Select")
      end
      it "handing_timeを選択していないと出品できない" do
        @item.handing_time_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Handing time Select")
      end
      it "priceが空だと出品できない" do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it "priceが半角数字でない場合は出品できない" do
      end
    end
  end
end