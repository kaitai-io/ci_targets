# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumToI < Kaitai::Struct::Struct

  ANIMAL = {
    4 => :animal_dog,
    7 => :animal_cat,
    12 => :animal_chicken,
  }
  I__ANIMAL = ANIMAL.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @pet_1 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u4le)
    @pet_2 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u4le)
    self
  end
  def pet_1_i_to_s
    return @pet_1_i_to_s unless @pet_1_i_to_s.nil?
    @pet_1_i_to_s = I__ANIMAL[pet_1].to_s(10)
    @pet_1_i_to_s
  end
  def pet_1_i
    return @pet_1_i unless @pet_1_i.nil?
    @pet_1_i = I__ANIMAL[pet_1]
    @pet_1_i
  end
  def pet_1_eq_int
    return @pet_1_eq_int unless @pet_1_eq_int.nil?
    @pet_1_eq_int = I__ANIMAL[pet_1] == 7
    @pet_1_eq_int
  end
  def one_lt_two
    return @one_lt_two unless @one_lt_two.nil?
    @one_lt_two = I__ANIMAL[pet_1] < I__ANIMAL[pet_2]
    @one_lt_two
  end
  def pet_1_mod
    return @pet_1_mod unless @pet_1_mod.nil?
    @pet_1_mod = (I__ANIMAL[pet_1] + 32768)
    @pet_1_mod
  end
  def pet_2_eq_int
    return @pet_2_eq_int unless @pet_2_eq_int.nil?
    @pet_2_eq_int = I__ANIMAL[pet_2] == 5
    @pet_2_eq_int
  end
  attr_reader :pet_1
  attr_reader :pet_2
end
