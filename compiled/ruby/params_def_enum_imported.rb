# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsDefEnumImported < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self, pet_1_param, pet_2_param)
    super(_io, _parent, _root)
    @pet_1_param = pet_1_param
    @pet_2_param = pet_2_param
    _read
  end

  def _read
    self
  end
  attr_reader :pet_1_param
  attr_reader :pet_2_param
end
