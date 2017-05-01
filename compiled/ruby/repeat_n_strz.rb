# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatNStrz < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @qty = @_io.read_u4le
    @lines = Array.new(qty)
    (qty).times { |i|
      @lines[i] = (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
    }
  end
  attr_reader :qty
  attr_reader :lines
end
