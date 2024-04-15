# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class OptionalId < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_unnamed0 = @_io.read_u1
    @_unnamed1 = @_io.read_u1
    @_unnamed2 = @_io.read_bytes(5)
    self
  end
  attr_reader :_unnamed0
  attr_reader :_unnamed1
  attr_reader :_unnamed2
end
