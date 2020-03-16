# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatUntilCalcArrayType < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @_raw_records = []
    @records = []
    i = 0
    begin
      _buf = @_io.read_bytes(5)
      @_raw_records << _buf
      _io__raw_records = Kaitai::Struct::Stream.new(@_raw_records.last)
      _ = Record.new(_io__raw_records, self, @_root)
      @records << _
      i += 1
    end until _.marker == 170
    self
  end
  class Record < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @marker = @_io.read_u1
      @body = @_io.read_u4le
      self
    end
    attr_reader :marker
    attr_reader :body
  end
  def recs_accessor
    return @recs_accessor unless @recs_accessor.nil?
    @recs_accessor = records
    @recs_accessor
  end
  def first_rec
    return @first_rec unless @first_rec.nil?
    @first_rec = recs_accessor.first
    @first_rec
  end
  attr_reader :records
  attr_reader :_raw_records
end
