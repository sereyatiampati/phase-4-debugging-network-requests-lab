class Toy < ApplicationRecord
    validates :name, presence:true, length: { minimum: 5 }
    validates :image, presence:true, format: { with: /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z/i ,message: "must be a valid URL format"}
end
