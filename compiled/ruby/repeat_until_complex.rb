# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatUntilComplex < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @first = []
    i = 0
    begin
      _ = TypeU1.new(@_io, self, @_root)
      @first << _
      i += 1
    end until _.count == 0
    @second = []
    i = 0
    begin
      _ = TypeU2.new(@_io, self, @_root)
      @second << _
      i += 1
    end until _.count == 0
    @third = []
    i = 0
    begin
      _ = @_io.read_u1
      @third << _
      i += 1
    end until _ == 0
    self
  end
  class TypeU1 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @count = @_io.read_u1
      @values = []
      (count).times { |i|
        @values << @_io.read_u1
      }
      self
    end
    attr_reader :count
    attr_reader :values
  end
  class TypeU2 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @count = @_io.read_u2le
      @values = []
      (count).times { |i|
        @values << @_io.read_u2le
      }
      self
    end
    attr_reader :count
    attr_reader :values
  end
  attr_reader :first
  attr_reader :second
  attr_reader :third
end
