# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessToUser < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @_raw__raw_buf1 = @_io.read_bytes(5)
    @_raw_buf1 = Kaitai::Struct::Stream::process_rotate_left(@_raw__raw_buf1, 3, 1)
    io = Kaitai::Struct::Stream.new(@_raw_buf1)
    @buf1 = JustStr.new(io, self, @_root)
    self
  end
  class JustStr < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @str = (@_io.read_bytes_full).force_encoding("UTF-8")
      self
    end
    attr_reader :str
  end
  attr_reader :buf1
  attr_reader :_raw__raw_buf1
  attr_reader :_raw_buf1
end
