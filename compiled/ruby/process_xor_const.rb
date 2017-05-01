# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessXorConst < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @key = @_io.read_u1
    @_raw_buf = @_io.read_bytes_full
    @buf = Kaitai::Struct::Stream::process_xor_one(@_raw_buf, 255)
  end
  attr_reader :key
  attr_reader :buf
  attr_reader :_raw_buf
end
