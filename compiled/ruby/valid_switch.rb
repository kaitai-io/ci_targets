# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidSwitch < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @a = @_io.read_u1
    raise Kaitai::Struct::ValidationNotEqualError.new(80, @a, @_io, "/seq/0") if not @a == 80
    case a
    when 80
      @b = @_io.read_u2le
    else
      @b = @_io.read_u2be
    end
    raise Kaitai::Struct::ValidationNotEqualError.new(17217, @b, @_io, "/seq/1") if not @b == 17217
    self
  end
  attr_reader :a
  attr_reader :b
end
