# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailEqStr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @foo = (@_io.read_bytes(4)).force_encoding("ASCII")
    raise Kaitai::Struct::ValidationNotEqualError.new("BACK", foo, _io, "/seq/0") if not foo == "BACK"
    self
  end
  attr_reader :foo
end
