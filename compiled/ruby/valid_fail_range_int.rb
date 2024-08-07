# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailRangeInt < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @foo = @_io.read_u1
    raise Kaitai::Struct::ValidationLessThanError.new(5, @foo, @_io, "/seq/0") if not @foo >= 5
    raise Kaitai::Struct::ValidationGreaterThanError.new(10, @foo, @_io, "/seq/0") if not @foo <= 10
    self
  end
  attr_reader :foo
end
