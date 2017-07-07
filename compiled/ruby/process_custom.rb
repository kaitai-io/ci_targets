# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessCustom < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @_raw_buf1 = @_io.read_bytes(5)
    _process = MyCustomFx.new(7, true, [32, 48, 64].pack('C*'))
    @buf1 = _process.decode(@_raw_buf1)
    @_raw_buf2 = @_io.read_bytes(5)
    _process = Nested::Deeply::CustomFx.new(7)
    @buf2 = _process.decode(@_raw_buf2)
    @key = @_io.read_u1
    @_raw_buf3 = @_io.read_bytes(5)
    _process = MyCustomFx.new(key, false, [0].pack('C*'))
    @buf3 = _process.decode(@_raw_buf3)
    self
  end
  attr_reader :buf1
  attr_reader :buf2
  attr_reader :key
  attr_reader :buf3
  attr_reader :_raw_buf1
  attr_reader :_raw_buf2
  attr_reader :_raw_buf3
end
