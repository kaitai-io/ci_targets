# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IoLocalVar < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @skip = @_io.read_bytes(20)
    if mess_up._io.pos < 0
      @always_null = @_io.read_u1
    end
    @followup = @_io.read_u1
    self
  end
  class Dummy < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  def mess_up
    return @mess_up unless @mess_up.nil?
    io = _root._io
    _pos = io.pos
    io.seek(8)
    case 2
    when 1
      _io_mess_up = io.substream(2)
      @mess_up = Dummy.new(_io_mess_up, self, @_root)
    when 2
      _io_mess_up = io.substream(2)
      @mess_up = Dummy.new(_io_mess_up, self, @_root)
    else
      @mess_up = io.read_bytes(2)
    end
    io.seek(_pos)
    @mess_up
  end
  attr_reader :skip
  attr_reader :always_null
  attr_reader :followup
  attr_reader :_raw_mess_up
end
