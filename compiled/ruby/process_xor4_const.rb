# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessXor4Const < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @key = @_io.read_bytes(4)
    @_raw_buf = @_io.read_bytes_full
    @buf = Kaitai::Struct::Stream::process_xor_many(@_raw_buf, [236, 187, 163, 20].pack('C*'))
    self
  end
  attr_reader :key
  attr_reader :buf
  attr_reader :_raw_buf
end
