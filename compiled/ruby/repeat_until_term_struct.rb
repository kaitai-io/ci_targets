# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatUntilTermStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_raw_records1 = []
    @records1 = []
    i = 0
    begin
      _buf = @_io.read_bytes_term(170, false, true, true)
      @_raw_records1 << _buf
      _io__raw_records1 = Kaitai::Struct::Stream.new(@_raw_records1.last)
      _ = BytesWrapper.new(_io__raw_records1, self, @_root)
      @records1 << _
      i += 1
    end until _.value.size == 0
    @_raw_records2 = []
    @records2 = []
    i = 0
    begin
      _buf = @_io.read_bytes_term(170, true, true, true)
      @_raw_records2 << _buf
      _io__raw_records2 = Kaitai::Struct::Stream.new(@_raw_records2.last)
      _ = BytesWrapper.new(_io__raw_records2, self, @_root)
      @records2 << _
      i += 1
    end until _.value != [170].pack('C*')
    @_raw_records3 = []
    @records3 = []
    i = 0
    begin
      _buf = @_io.read_bytes_term(85, false, false, true)
      @_raw_records3 << _buf
      _io__raw_records3 = Kaitai::Struct::Stream.new(@_raw_records3.last)
      _ = BytesWrapper.new(_io__raw_records3, self, @_root)
      @records3 << _
      i += 1
    end until _.value == records1.last.value
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
