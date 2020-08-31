# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsPassBool < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @s_false = @_io.read_bits_int_be(1) != 0
    @s_true = @_io.read_bits_int_be(1) != 0
    @_io.align_to_byte
    @seq_b1 = ParamTypeB1.new(@_io, self, @_root, s_true)
    @seq_bool = ParamTypeBool.new(@_io, self, @_root, s_false)
    @literal_b1 = ParamTypeB1.new(@_io, self, @_root, false)
    @literal_bool = ParamTypeBool.new(@_io, self, @_root, true)
    @inst_b1 = ParamTypeB1.new(@_io, self, @_root, v_true)
    @inst_bool = ParamTypeBool.new(@_io, self, @_root, v_false)
    self
  end
  class ParamTypeB1 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, arg)
      super(_io, _parent, _root)
      @arg = arg
      _read
    end

    def _read
      @foo = @_io.read_bytes((arg ? 1 : 2))
      self
    end
    attr_reader :foo
    attr_reader :arg
  end
  class ParamTypeBool < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, arg)
      super(_io, _parent, _root)
      @arg = arg
      _read
    end

    def _read
      @foo = @_io.read_bytes((arg ? 1 : 2))
      self
    end
    attr_reader :foo
    attr_reader :arg
  end
  def v_false
    return @v_false unless @v_false.nil?
    @v_false = false
    @v_false
  end
  def v_true
    return @v_true unless @v_true.nil?
    @v_true = true
    @v_true
  end
  attr_reader :s_false
  attr_reader :s_true
  attr_reader :seq_b1
  attr_reader :seq_bool
  attr_reader :literal_b1
  attr_reader :literal_bool
  attr_reader :inst_b1
  attr_reader :inst_bool
end
