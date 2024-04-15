# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessRepeatBytes < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_raw_bufs = []
    @bufs = []
    (2).times { |i|
      @_raw_bufs << @_io.read_bytes(5)
      @bufs << Kaitai::Struct::Stream::process_xor_one(@_raw_bufs[i], 158)
    }
    self
  end
  attr_reader :bufs
  attr_reader :_raw_bufs
end
