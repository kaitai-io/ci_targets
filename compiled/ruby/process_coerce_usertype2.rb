# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessCoerceUsertype2 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @records = Array.new(2)
    (2).times { |i|
      @records[i] = Record.new(@_io, self, @_root)
    }
    self
  end
  class Record < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @flag = @_io.read_u1
      if flag == 0
        @buf_unproc = Foo.new(@_io, self, @_root)
      end
      if flag != 0
        @_raw__raw_buf_proc = @_io.read_bytes(4)
        @_raw_buf_proc = Kaitai::Struct::Stream::process_xor_one(@_raw__raw_buf_proc, 170)
        _io__raw_buf_proc = Kaitai::Struct::Stream.new(@_raw_buf_proc)
        @buf_proc = Foo.new(_io__raw_buf_proc, self, @_root)
      end
      self
    end
    def buf
      return @buf unless @buf.nil?
      @buf = (flag == 0 ? buf_unproc : buf_proc)
      @buf
    end
    attr_reader :flag
    attr_reader :buf_unproc
    attr_reader :buf_proc
    attr_reader :_raw_buf_proc
    attr_reader :_raw__raw_buf_proc
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = @_io.read_u4le
      self
    end
    attr_reader :value
  end
  attr_reader :records
end
