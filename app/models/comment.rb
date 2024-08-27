class Comment < ApplicationRecord
  belongs_to :article, optional: true\
  # O comentario pertence a um artigo

  # Validações
  validates :name, presence: true
  validates :content, presence: true
end
