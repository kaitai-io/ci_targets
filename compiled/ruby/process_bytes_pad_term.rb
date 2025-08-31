# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessBytesPadTerm < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_raw_str_pad = Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(20), 64)
    @str_pad = Kaitai::Struct::Stream::process_xor_one(@_raw_str_pad, 21)
    @_raw_str_term = Kaitai::Struct::Stream::bytes_terminate(@_io.read_bytes(20), 64, false)
    @str_term = Kaitai::Struct::Stream::process_xor_one(@_raw_str_term, 21)
    @_raw_str_term_and_pad = Kaitai::Struct::Stream::bytes_terminate(Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(20), 43), 64, false)
    @str_term_and_pad = Kaitai::Struct::Stream::process_xor_one(@_raw_str_term_and_pad, 21)
    @_raw_str_term_include = Kaitai::Struct::Stream::bytes_terminate(@_io.read_bytes(20), 64, true)
    @str_term_include = Kaitai::Struct::Stream::process_xor_one(@_raw_str_term_include, 21)
    self
  end
  attr_reader :str_pad
  attr_reader :str_term
  attr_reader :str_term_and_pad
  attr_reader :str_term_include
  attr_reader :_raw_str_pad
  attr_reader :_raw_str_term
  attr_reader :_raw_str_term_and_pad
  attr_reader :_raw_str_term_include
end
