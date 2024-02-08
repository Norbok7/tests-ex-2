require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should belong_to(:author) }

  it "is valid with valid attributes" do
    author = FactoryBot.create(:author)
    book = FactoryBot.build(:book, author: author)
    expect(book).to be_valid
  end

  it "is not valid without an author" do
    book = FactoryBot.build(:book, author: nil)
    expect(book).to_not be_valid
  end
end

