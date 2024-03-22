# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatNStrzDouble < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @qty = @_io.read_u4le
    @lines1 = []
    (qty / 2).times { |i|
      @lines1 << (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
    }
    @lines2 = []
    (qty / 2).times { |i|
      @lines2 << (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
    }
    self
  end
  attr_reader :qty
  attr_reader :lines1
  attr_reader :lines2
end
