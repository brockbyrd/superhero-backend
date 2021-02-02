class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :intelligence, :strength, :speed, :durability, :power, :combat, :race, :gender, :height, :weight, :fullName, :alignment, :occupation, :groups, :universe, :image1, :image2
end
