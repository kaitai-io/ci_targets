# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidOptionalId < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @_unnamed0 = @_io.read_bytes(6)
    raise Kaitai::Struct::ValidationNotEqualError.new([80, 65, 67, 75, 45, 49].pack('C*'), _unnamed0, _io, "/seq/0") if not _unnamed0 == [80, 65, 67, 75, 45, 49].pack('C*')
    @_unnamed1 = @_io.read_u1
    raise Kaitai::Struct::ValidationNotEqualError.new(255, _unnamed1, _io, "/seq/1") if not _unnamed1 == 255
    @_unnamed2 = @_io.read_s1
    _ = _unnamed2
    raise Kaitai::Struct::ValidationExprError.new(_unnamed2, _io, "/seq/2") if not _ == -1
    self
  end
  attr_reader :_unnamed0
  attr_reader :_unnamed1
  attr_reader :_unnamed2
end
