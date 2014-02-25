class Article < ActiveRecord::Base
  has_many :article_categories
  has_many :categories, through: :article_categories

  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :categories, presence: true
end
