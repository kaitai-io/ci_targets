# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class DebugEnumName < Kaitai::Struct::Struct
  attr_reader :_debug

  TEST_ENUM1 = {
    80 => :test_enum1_enum_value_80,
  }
  I__TEST_ENUM1 = TEST_ENUM1.invert

  TEST_ENUM2 = {
    65 => :test_enum2_enum_value_65,
  }
  I__TEST_ENUM2 = TEST_ENUM2.invert
  SEQ_FIELDS = ["one", "array_of_ints", "test_type"]
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @_debug = {}
  end

  def _read
    (@_debug['one'] ||= {})[:start] = @_io.pos
    @one = Kaitai::Struct::Stream::resolve_enum(TEST_ENUM1, @_io.read_u1)
    (@_debug['one'] ||= {})[:end] = @_io.pos
    (@_debug['array_of_ints'] ||= {})[:start] = @_io.pos
    @array_of_ints = Array.new(1)
    (1).times { |i|
      (@_debug['array_of_ints'][:arr] ||= [])[i] = {:start => @_io.pos}
      @array_of_ints[i] = Kaitai::Struct::Stream::resolve_enum(TEST_ENUM2, @_io.read_u1)
      @_debug['array_of_ints'][:arr][i][:end] = @_io.pos
    }
    (@_debug['array_of_ints'] ||= {})[:end] = @_io.pos
    (@_debug['test_type'] ||= {})[:start] = @_io.pos
    @test_type = TestSubtype.new(@_io, self, @_root)
    @test_type._read
    (@_debug['test_type'] ||= {})[:end] = @_io.pos
    self
  end
  class TestSubtype < Kaitai::Struct::Struct
    attr_reader :_debug

    INNER_ENUM1 = {
      67 => :inner_enum1_enum_value_67,
    }
    I__INNER_ENUM1 = INNER_ENUM1.invert

    INNER_ENUM2 = {
      11 => :inner_enum2_enum_value_11,
    }
    I__INNER_ENUM2 = INNER_ENUM2.invert
    SEQ_FIELDS = ["field1", "field2"]
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @_debug = {}
    end

    def _read
      (@_debug['field1'] ||= {})[:start] = @_io.pos
      @field1 = Kaitai::Struct::Stream::resolve_enum(INNER_ENUM1, @_io.read_u1)
      (@_debug['field1'] ||= {})[:end] = @_io.pos
      (@_debug['field2'] ||= {})[:start] = @_io.pos
      @field2 = @_io.read_u1
      (@_debug['field2'] ||= {})[:end] = @_io.pos
      self
    end
    def instance_field
      return @instance_field unless @instance_field.nil?
      @instance_field = Kaitai::Struct::Stream::resolve_enum(INNER_ENUM2, (field2 & 15))
      @instance_field
    end
    attr_reader :field1
    attr_reader :field2
  end
  attr_reader :one
  attr_reader :array_of_ints
  attr_reader :test_type
end
