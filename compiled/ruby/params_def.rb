# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsDef < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil, len, has_trailer)
    super(_io, _parent, _root || self)
    @len = len
    @has_trailer = has_trailer
    _read
  end

  def _read
    @buf = (@_io.read_bytes(len)).force_encoding("UTF-8")
    if has_trailer
      @trailer = @_io.read_u1
    end
    self
  end
  attr_reader :buf
  attr_reader :trailer
  attr_reader :len
  attr_reader :has_trailer
end
