# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatUntilComplex < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @first = []
    begin
      _ = TypeU1.new(@_io, self, @_root)
      @first << _
    end until _.count == 0
    @second = []
    begin
      _ = TypeU2.new(@_io, self, @_root)
      @second << _
    end until _.count == 0
    @third = []
    begin
      _ = @_io.read_u1
      @third << _
    end until _ == 0
  end
  class TypeU1 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @count = @_io.read_u1
      @values = Array.new(count)
      (count).times { |i|
        @values[i] = @_io.read_u1
      }
    end
    attr_reader :count
    attr_reader :values
  end
  class TypeU2 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @count = @_io.read_u2le
      @values = Array.new(count)
      (count).times { |i|
        @values[i] = @_io.read_u2le
      }
    end
    attr_reader :count
    attr_reader :values
  end
  attr_reader :first
  attr_reader :second
  attr_reader :third
end
