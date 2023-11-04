# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class JsSignedRightShift < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    self
  end
  def should_be_40000000
    return @should_be_40000000 unless @should_be_40000000.nil?
    @should_be_40000000 = (2147483648 >> 1)
    @should_be_40000000
  end
  def should_be_a00000
    return @should_be_a00000 unless @should_be_a00000.nil?
    @should_be_a00000 = (2684354560 >> 8)
    @should_be_a00000
  end
end
