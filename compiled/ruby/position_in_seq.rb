# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class PositionInSeq < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @numbers = []
    (header.qty_numbers).times { |i|
      @numbers << @_io.read_u1
    }
    self
  end
  class HeaderObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @qty_numbers = @_io.read_u4le
      self
    end
    attr_reader :qty_numbers
  end
  def header
    return @header unless @header.nil?
    _pos = @_io.pos
    @_io.seek(16)
    @header = HeaderObj.new(@_io, self, @_root)
    @_io.seek(_pos)
    @header
  end
  attr_reader :numbers
end
