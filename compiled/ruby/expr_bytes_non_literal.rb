# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprBytesNonLiteral < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @one = @_io.read_u1
    @two = @_io.read_u1
    self
  end
  def calc_bytes
    return @calc_bytes unless @calc_bytes.nil?
    @calc_bytes = [one, two].pack('C*')
    @calc_bytes
  end
  attr_reader :one
  attr_reader :two
end
