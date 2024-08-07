# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class FixedContents < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @normal = @_io.read_bytes(6)
    raise Kaitai::Struct::ValidationNotEqualError.new([80, 65, 67, 75, 45, 49].pack('C*'), @normal, @_io, "/seq/0") if not @normal == [80, 65, 67, 75, 45, 49].pack('C*')
    @high_bit_8 = @_io.read_bytes(2)
    raise Kaitai::Struct::ValidationNotEqualError.new([255, 255].pack('C*'), @high_bit_8, @_io, "/seq/1") if not @high_bit_8 == [255, 255].pack('C*')
    self
  end
  attr_reader :normal
  attr_reader :high_bit_8
end
