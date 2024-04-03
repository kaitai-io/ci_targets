# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsDefUsertypeImported < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self, hw_param)
    super(_io, _parent, _root)
    @hw_param = hw_param
    _read
  end

  def _read
    self
  end
  def hw_one
    return @hw_one unless @hw_one.nil?
    @hw_one = hw_param.one
    @hw_one
  end
  attr_reader :hw_param
end
