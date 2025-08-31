# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessRepeatUsertypeDynargRotate < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_raw_blocks_rol = []
    @_raw__raw_blocks_rol = []
    @blocks_rol = []
    (2).times { |i|
      @_raw__raw_blocks_rol << @_io.read_bytes(3)
      @_raw_blocks_rol << Kaitai::Struct::Stream::process_rotate_left(@_raw__raw_blocks_rol[i], _io.pos - 4 * i, 1)
      _io__raw_blocks_rol = Kaitai::Struct::Stream.new(@_raw_blocks_rol[i])
      @blocks_rol << Block.new(_io__raw_blocks_rol, self, @_root)
    }
    @_raw_blocks_ror = []
    @_raw__raw_blocks_ror = []
    @blocks_ror = []
    (3).times { |i|
      @_raw__raw_blocks_ror << @_io.read_bytes(3)
      @_raw_blocks_ror << Kaitai::Struct::Stream::process_rotate_left(@_raw__raw_blocks_ror[i], 8 - ((_io.pos - 6) - 4 * i), 1)
      _io__raw_blocks_ror = Kaitai::Struct::Stream.new(@_raw_blocks_ror[i])
      @blocks_ror << Block.new(_io__raw_blocks_ror, self, @_root)
    }
    @blocks_b = BlocksBWrapper.new(@_io, self, @_root)
    self
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @a = @_io.read_u2le
      self
    end
    attr_reader :a
  end
  class BlocksBWrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @dummy = @_io.read_u1
      self
    end
    def blocks_rol_0_b
      return @blocks_rol_0_b unless @blocks_rol_0_b.nil?
      io = _parent.blocks_rol[0]._io
      _pos = io.pos
      io.seek(2)
      @blocks_rol_0_b = io.read_u1
      io.seek(_pos)
      @blocks_rol_0_b
    end
    def blocks_rol_1_b
      return @blocks_rol_1_b unless @blocks_rol_1_b.nil?
      io = _parent.blocks_rol[1]._io
      _pos = io.pos
      io.seek(2)
      @blocks_rol_1_b = io.read_u1
      io.seek(_pos)
      @blocks_rol_1_b
    end
    def blocks_ror_0_b
      return @blocks_ror_0_b unless @blocks_ror_0_b.nil?
      io = _parent.blocks_ror[0]._io
      _pos = io.pos
      io.seek(2)
      @blocks_ror_0_b = io.read_u1
      io.seek(_pos)
      @blocks_ror_0_b
    end
    def blocks_ror_1_b
      return @blocks_ror_1_b unless @blocks_ror_1_b.nil?
      io = _parent.blocks_ror[1]._io
      _pos = io.pos
      io.seek(2)
      @blocks_ror_1_b = io.read_u1
      io.seek(_pos)
      @blocks_ror_1_b
    end
    def blocks_ror_2_b
      return @blocks_ror_2_b unless @blocks_ror_2_b.nil?
      io = _parent.blocks_ror[2]._io
      _pos = io.pos
      io.seek(2)
      @blocks_ror_2_b = io.read_u1
      io.seek(_pos)
      @blocks_ror_2_b
    end
    attr_reader :dummy
  end
  attr_reader :blocks_rol
  attr_reader :blocks_ror
  attr_reader :blocks_b
  attr_reader :_raw_blocks_rol
  attr_reader :_raw__raw_blocks_rol
  attr_reader :_raw_blocks_ror
  attr_reader :_raw__raw_blocks_ror
end
