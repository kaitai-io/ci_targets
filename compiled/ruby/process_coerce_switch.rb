# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessCoerceSwitch < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @buf_type = @_io.read_u1
    @flag = @_io.read_u1
    if flag == 0
      case buf_type
      when 0
        @_raw_buf_unproc = @_io.read_bytes(4)
        io = Kaitai::Struct::Stream.new(@_raw_buf_unproc)
        @buf_unproc = Foo.new(io, self, @_root)
      else
        @buf_unproc = @_io.read_bytes(4)
      end
    end
    if flag != 0
      case buf_type
      when 0
        @_raw__raw_buf_proc = @_io.read_bytes(4)
        @_raw_buf_proc = Kaitai::Struct::Stream::process_xor_one(@_raw__raw_buf_proc, 170)
        io = Kaitai::Struct::Stream.new(@_raw_buf_proc)
        @buf_proc = Foo.new(io, self, @_root)
      else
        @_raw_buf_proc = @_io.read_bytes(4)
        @buf_proc = Kaitai::Struct::Stream::process_xor_one(@_raw_buf_proc, 170)
      end
    end
    self
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @bar = @_io.read_bytes(4)
      self
    end
    attr_reader :bar
  end
  def buf
    return @buf unless @buf.nil?
    @buf = (flag == 0 ? buf_unproc : buf_proc)
    @buf
  end
  attr_reader :buf_type
  attr_reader :flag
  attr_reader :buf_unproc
  attr_reader :buf_proc
  attr_reader :_raw_buf_unproc
  attr_reader :_raw__raw_buf_proc
  attr_reader :_raw_buf_proc
end
