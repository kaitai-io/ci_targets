# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumImportLiterals < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    self
  end
  def pet_1_eq
    return @pet_1_eq unless @pet_1_eq.nil?
    @pet_1_eq = (true ? :animal_chicken : :animal_dog) == :animal_chicken
    @pet_1_eq
  end
  def pet_1_to_i
    return @pet_1_to_i unless @pet_1_to_i.nil?
    @pet_1_to_i = Enum0::I__ANIMAL[:animal_cat]
    @pet_1_to_i
  end
  def pet_2
    return @pet_2 unless @pet_2.nil?
    @pet_2 = :animal_hare
    @pet_2
  end
end
