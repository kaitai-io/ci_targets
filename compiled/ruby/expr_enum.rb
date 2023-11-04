# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprEnum < Kaitai::Struct::Struct

  ANIMAL = {
    4 => :animal_dog,
    7 => :animal_cat,
    12 => :animal_chicken,
    102 => :animal_boom,
  }
  I__ANIMAL = ANIMAL.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @one = @_io.read_u1
    self
  end
  def const_dog
    return @const_dog unless @const_dog.nil?
    @const_dog = Kaitai::Struct::Stream::resolve_enum(ANIMAL, 4)
    @const_dog
  end
  def derived_boom
    return @derived_boom unless @derived_boom.nil?
    @derived_boom = Kaitai::Struct::Stream::resolve_enum(ANIMAL, one)
    @derived_boom
  end
  def derived_dog
    return @derived_dog unless @derived_dog.nil?
    @derived_dog = Kaitai::Struct::Stream::resolve_enum(ANIMAL, (one - 98))
    @derived_dog
  end
  attr_reader :one
end
