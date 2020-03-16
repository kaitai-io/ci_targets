# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IntegersMinMax < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @unsigned_min = Unsigned.new(@_io, self, @_root)
    @unsigned_max = Unsigned.new(@_io, self, @_root)
    @signed_min = Signed.new(@_io, self, @_root)
    @signed_max = Signed.new(@_io, self, @_root)
    self
  end
  class Unsigned < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @u1 = @_io.read_u1
      @u2le = @_io.read_u2le
      @u4le = @_io.read_u4le
      @u8le = @_io.read_u8le
      @u2be = @_io.read_u2be
      @u4be = @_io.read_u4be
      @u8be = @_io.read_u8be
      self
    end
    attr_reader :u1
    attr_reader :u2le
    attr_reader :u4le
    attr_reader :u8le
    attr_reader :u2be
    attr_reader :u4be
    attr_reader :u8be
  end
  class Signed < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @s1 = @_io.read_s1
      @s2le = @_io.read_s2le
      @s4le = @_io.read_s4le
      @s8le = @_io.read_s8le
      @s2be = @_io.read_s2be
      @s4be = @_io.read_s4be
      @s8be = @_io.read_s8be
      self
    end
    attr_reader :s1
    attr_reader :s2le
    attr_reader :s4le
    attr_reader :s8le
    attr_reader :s2be
    attr_reader :s4be
    attr_reader :s8be
  end
  attr_reader :unsigned_min
  attr_reader :unsigned_max
  attr_reader :signed_min
  attr_reader :signed_max
end
