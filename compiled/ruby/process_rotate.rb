# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessRotate < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @_raw_buf1 = @_io.read_bytes(5)
    @buf1 = Kaitai::Struct::Stream::process_rotate_left(@_raw_buf1, 3, 1)
    @_raw_buf2 = @_io.read_bytes(5)
    @buf2 = Kaitai::Struct::Stream::process_rotate_left(@_raw_buf2, 8 - (3), 1)
    @key = @_io.read_u1
    @_raw_buf3 = @_io.read_bytes(5)
    @buf3 = Kaitai::Struct::Stream::process_rotate_left(@_raw_buf3, key, 1)
  end
  attr_reader :buf1
  attr_reader :buf2
  attr_reader :key
  attr_reader :buf3
  attr_reader :_raw_buf1
  attr_reader :_raw_buf2
  attr_reader :_raw_buf3
end
