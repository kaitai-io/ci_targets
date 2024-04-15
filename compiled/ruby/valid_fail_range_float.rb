# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailRangeFloat < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @foo = @_io.read_f4le
    raise Kaitai::Struct::ValidationLessThanError.new(0.2, foo, _io, "/seq/0") if not foo >= 0.2
    raise Kaitai::Struct::ValidationGreaterThanError.new(0.4, foo, _io, "/seq/0") if not foo <= 0.4
    self
  end
  attr_reader :foo
end
