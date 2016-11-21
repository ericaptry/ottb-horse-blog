class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true,
            length: {minimum: 3, maximum: 50}
  validates :description, presence: true,
            length: {minimum: 10, maximum: 300}
  validates :user_id, presence: true
  
  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end