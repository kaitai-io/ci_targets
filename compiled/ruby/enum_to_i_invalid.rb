# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumToIInvalid < Kaitai::Struct::Struct

  ANIMAL = {
    102 => :animal_dog,
    124 => :animal_cat,
  }
  I__ANIMAL = ANIMAL.invert
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @pet_1 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u1)
    @pet_2 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u1)
    self
  end
  def one_lt_two
    return @one_lt_two unless @one_lt_two.nil?
    @one_lt_two = I__ANIMAL[pet_1] < I__ANIMAL[pet_2]
    @one_lt_two
  end
  def pet_2_eq_int_f
    return @pet_2_eq_int_f unless @pet_2_eq_int_f.nil?
    @pet_2_eq_int_f = I__ANIMAL[pet_2] == 110
    @pet_2_eq_int_f
  end
  def pet_2_eq_int_t
    return @pet_2_eq_int_t unless @pet_2_eq_int_t.nil?
    @pet_2_eq_int_t = I__ANIMAL[pet_2] == 111
    @pet_2_eq_int_t
  end
  def pet_2_i
    return @pet_2_i unless @pet_2_i.nil?
    @pet_2_i = I__ANIMAL[pet_2]
    @pet_2_i
  end
  def pet_2_i_to_s
    return @pet_2_i_to_s unless @pet_2_i_to_s.nil?
    @pet_2_i_to_s = I__ANIMAL[pet_2].to_s
    @pet_2_i_to_s
  end
  def pet_2_mod
    return @pet_2_mod unless @pet_2_mod.nil?
    @pet_2_mod = I__ANIMAL[pet_2] + 32768
    @pet_2_mod
  end
  attr_reader :pet_1
  attr_reader :pet_2
end
