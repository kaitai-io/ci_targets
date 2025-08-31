# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class InstanceIoUserEarlier < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    _io_sized_a = @_io.substream(6)
    @sized_a = Slot.new(_io_sized_a, self, @_root)
    _io_sized_b = @_io.substream(6)
    @sized_b = Slot.new(_io_sized_b, self, @_root)
    @into_b = Foo.new(@_io, self, @_root)
    @into_a_skipped = Foo.new(@_io, self, @_root)
    @into_a = Foo.new(@_io, self, @_root)
    @last_accessor = Baz.new(@_io, self, @_root)
    self
  end
  class Baz < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      if _parent.into_b.inst.last == 89
        @v = @_io.read_u1
      end
      self
    end
    attr_reader :v
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @indicator = @_io.read_u1
      if  ((inst._io.size != 0) && (inst.content == 102)) 
        @bar = @_io.read_u1
      end
      self
    end
    def inst
      return @inst unless @inst.nil?
      io = (indicator == 202 ? _parent.sized_b._io : _parent.sized_a._io)
      _pos = io.pos
      io.seek(1)
      _io_inst = io.substream((_io.pos != 14 ? 4 : 0))
      @inst = Slot.new(_io_inst, self, @_root)
      io.seek(_pos)
      @inst
    end
    attr_reader :indicator
    attr_reader :bar
    attr_reader :_raw_inst
  end
  class Slot < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      if _io.size != 0
        @content = @_io.read_u1
      end
      self
    end
    def last
      return @last unless @last.nil?
      if _io.size != 0
        _pos = @_io.pos
        @_io.seek(_io.size - 1)
        @last = @_io.read_u1
        @_io.seek(_pos)
      end
      @last
    end
    attr_reader :content
  end
  def a_mid
    return @a_mid unless @a_mid.nil?
    io = into_a.inst._io
    _pos = io.pos
    io.seek(1)
    @a_mid = io.read_u2le
    io.seek(_pos)
    @a_mid
  end
  def b_mid
    return @b_mid unless @b_mid.nil?
    io = into_b.inst._io
    _pos = io.pos
    io.seek(1)
    @b_mid = io.read_u2le
    io.seek(_pos)
    @b_mid
  end
  attr_reader :sized_a
  attr_reader :sized_b
  attr_reader :into_b
  attr_reader :into_a_skipped
  attr_reader :into_a
  attr_reader :last_accessor
  attr_reader :_raw_sized_a
  attr_reader :_raw_sized_b
end
