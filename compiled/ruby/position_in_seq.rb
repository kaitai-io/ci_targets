# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class PositionInSeq < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @numbers = Array.new(header.qty_numbers)
    (header.qty_numbers).times { |i|
      @numbers[i] = @_io.read_u1
    }
  end
  class HeaderObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @qty_numbers = @_io.read_u4le
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
