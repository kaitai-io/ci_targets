# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatNTermStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_raw_records1 = []
    @records1 = []
    (2).times { |i|
      @_raw_records1 << @_io.read_bytes_term(170, false, true, true)
      _io__raw_records1 = Kaitai::Struct::Stream.new(@_raw_records1[i])
      @records1 << BytesWrapper.new(_io__raw_records1, self, @_root)
    }
    @_raw_records2 = []
    @records2 = []
    (2).times { |i|
      @_raw_records2 << @_io.read_bytes_term(170, true, true, true)
      _io__raw_records2 = Kaitai::Struct::Stream.new(@_raw_records2[i])
      @records2 << BytesWrapper.new(_io__raw_records2, self, @_root)
    }
    @_raw_records3 = []
    @records3 = []
    (2).times { |i|
      @_raw_records3 << @_io.read_bytes_term(85, false, false, true)
      _io__raw_records3 = Kaitai::Struct::Stream.new(@_raw_records3[i])
      @records3 << BytesWrapper.new(_io__raw_records3, self, @_root)
    }
    self
  end
  class BytesWrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = @_io.read_bytes_full
      self
    end
    attr_reader :value
  end
  attr_reader :records1
  attr_reader :records2
  attr_reader :records3
  attr_reader :_raw_records1
  attr_reader :_raw_records2
  attr_reader :_raw_records3
end
