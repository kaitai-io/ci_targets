# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessCoerceBytes < Kaitai::Struct::Struct
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
        @buf_unproc = @_io.read_bytes(4)
      end
      if flag != 0
        @_raw_buf_proc = @_io.read_bytes(4)
        @buf_proc = Kaitai::Struct::Stream::process_xor_one(@_raw_buf_proc, 170)
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
  end
  attr_reader :records
end
