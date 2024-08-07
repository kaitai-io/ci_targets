# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class TermStrzUtf16V1 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @s1 = (@_io.read_bytes_term_multi([0, 0].pack('C*'), false, true, true)).force_encoding("UTF-16LE").encode('UTF-8')
    @s2 = (@_io.read_bytes_term_multi([0, 0].pack('C*'), false, false, true)).force_encoding("UTF-16LE").encode('UTF-8')
    @term = @_io.read_u2le
    @s3 = (@_io.read_bytes_term_multi([0, 0].pack('C*'), true, true, true)).force_encoding("UTF-16LE").encode('UTF-8')
    self
  end
  attr_reader :s1
  attr_reader :s2
  attr_reader :term
  attr_reader :s3
end
