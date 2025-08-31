# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatNTermBytes < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @records1 = []
    (2).times { |i|
      @records1 << @_io.read_bytes_term(170, false, true, true)
    }
    @records2 = []
    (2).times { |i|
      @records2 << @_io.read_bytes_term(170, true, true, true)
    }
    @records3 = []
    (2).times { |i|
      @records3 << @_io.read_bytes_term(85, false, false, true)
    }
    self
  end
  attr_reader :records1
  attr_reader :records2
  attr_reader :records3
end
