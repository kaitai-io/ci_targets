# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatUntilSized < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @_raw_records = []
    @records = []
    begin
      _buf = @_io.read_bytes(5)
      @_raw_records << _buf
      io = Kaitai::Struct::Stream.new(@_raw_records.last)
      _ = Record.new(io, self, @_root)
      @records << _
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
  attr_reader :records
  attr_reader :_raw_records
end
