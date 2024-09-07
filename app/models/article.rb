class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  # O artigo tem muitos comentarios
  # Se o artigo for destruido, os comentarios tambem serao

  # Validações
  validates :title, presence: true, length: {minimum:3}
  validates :content, presence: true
  
end
