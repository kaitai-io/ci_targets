# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatEosTermStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_raw_records = []
    @records = []
    i = 0
    while not @_io.eof?
      @_raw_records << @_io.read_bytes_term(178, true, true, true)
      _io__raw_records = Kaitai::Struct::Stream.new(@_raw_records.last)
      @records << BytesWrapper.new(_io__raw_records, self, @_root)
      i += 1
    end
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
  attr_reader :records
  attr_reader :_raw_records
end
