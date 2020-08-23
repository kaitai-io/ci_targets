# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class InstanceStd < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    self
  end
  def header
    return @header unless @header.nil?
    _pos = @_io.pos
    @_io.seek(2)
    @header = (@_io.read_bytes(5)).force_encoding("ASCII")
    @_io.seek(_pos)
    @header
  end
end
