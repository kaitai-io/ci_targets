# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BytesPadTerm < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @str_pad = Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(20), 64)
    @str_term = Kaitai::Struct::Stream::bytes_terminate(@_io.read_bytes(20), 64, false)
    @str_term_and_pad = Kaitai::Struct::Stream::bytes_terminate(Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(20), 43), 64, false)
    @str_term_include = Kaitai::Struct::Stream::bytes_terminate(@_io.read_bytes(20), 64, true)
    self
  end
  attr_reader :str_pad
  attr_reader :str_term
  attr_reader :str_term_and_pad
  attr_reader :str_term_include
end
