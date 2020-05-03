class Dessert < ApplicationRecord
  has_one_attached :image
  validates :name, :price, :stock, :url, :image, presence: true
  validate :acceptable_image

  #Otro tipo de validacion de imagen
  #validates :images, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }

  private

  #Método para validar que la imagen adjunta no pese mas de 1MB y sea de formato jpeg y png

  def acceptable_image
    return unless image.attached?

    unless image.byte_size <= 1.megabyte
      errors.add(:image, "muy pesada, debe ser menor a 1 MB")
    end

    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(image.content_type)
      errors.add(:image, "solo se adminten archivos JPEG o PNG")
    end
  end

end
