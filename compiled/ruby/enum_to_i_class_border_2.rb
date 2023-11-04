# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumToIClassBorder2 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self, parent)
    super(_io, _parent, _root)
    @parent = parent
    _read
  end

  def _read
    self
  end
  def is_dog
    return @is_dog unless @is_dog.nil?
    @is_dog = EnumToIClassBorder1::I__ANIMAL[parent.some_dog] == 4
    @is_dog
  end
  attr_reader :parent
end
