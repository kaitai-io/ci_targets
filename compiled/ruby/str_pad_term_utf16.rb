# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrPadTermUtf16 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @str_term = (Kaitai::Struct::Stream::bytes_terminate_multi(@_io.read_bytes(10), [0, 0].pack('C*'), false)).force_encoding("UTF-16LE").encode('UTF-8')
    @str_term_include = (Kaitai::Struct::Stream::bytes_terminate_multi(@_io.read_bytes(10), [0, 0].pack('C*'), true)).force_encoding("UTF-16LE").encode('UTF-8')
    @str_term_and_pad = (Kaitai::Struct::Stream::bytes_terminate_multi(Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(9), 43), [0, 0].pack('C*'), false)).force_encoding("UTF-16LE").encode('UTF-8')
    self
  end
  attr_reader :str_term
  attr_reader :str_term_include
  attr_reader :str_term_and_pad
end
