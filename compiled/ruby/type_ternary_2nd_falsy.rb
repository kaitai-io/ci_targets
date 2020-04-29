# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class TypeTernary2ndFalsy < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @int_truthy = @_io.read_u1
    @ut = Foo.new(@_io, self, @_root)
    if false
      @null_ut = Foo.new(@_io, self, @_root)
    end
    @int_array = Array.new(2)
    (2).times { |i|
      @int_array[i] = @_io.read_u1
    }
    @int_array_empty = Array.new(0)
    (0).times { |i|
      @int_array_empty[i] = @_io.read_u1
    }
    self
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @m = @_io.read_u1
      self
    end
    attr_reader :m
  end
  def v_float_zero
    return @v_float_zero unless @v_float_zero.nil?
    @v_float_zero = (t ? 0.0 : 3.14)
    @v_float_zero
  end
  def t
    return @t unless @t.nil?
    @t = true
    @t
  end
  def v_int_neg_zero
    return @v_int_neg_zero unless @v_int_neg_zero.nil?
    @v_int_neg_zero = (t ? -0 : -20)
    @v_int_neg_zero
  end
  def v_int_zero
    return @v_int_zero unless @v_int_zero.nil?
    @v_int_zero = (t ? 0 : 10)
    @v_int_zero
  end
  def null_ut_inst
    return @null_ut_inst unless @null_ut_inst.nil?
    if false
      @null_ut_inst = ut
    end
    @null_ut_inst
  end
  def v_null_ut_inst
    return @v_null_ut_inst unless @v_null_ut_inst.nil?
    @v_null_ut_inst = (t ? null_ut_inst : ut)
    @v_null_ut_inst
  end
  def v_false
    return @v_false unless @v_false.nil?
    @v_false = (t ? false : true)
    @v_false
  end
  def v_str_empty
    return @v_str_empty unless @v_str_empty.nil?
    @v_str_empty = (t ? "" : "kaitai")
    @v_str_empty
  end
  def v_int_array_empty
    return @v_int_array_empty unless @v_int_array_empty.nil?
    @v_int_array_empty = (t ? int_array_empty : int_array)
    @v_int_array_empty
  end
  def v_null_ut
    return @v_null_ut unless @v_null_ut.nil?
    @v_null_ut = (t ? null_ut : ut)
    @v_null_ut
  end
  def v_float_neg_zero
    return @v_float_neg_zero unless @v_float_neg_zero.nil?
    @v_float_neg_zero = (t ? -0.0 : -2.72)
    @v_float_neg_zero
  end
  def v_str_w_zero
    return @v_str_w_zero unless @v_str_w_zero.nil?
    @v_str_w_zero = (t ? "0" : "30")
    @v_str_w_zero
  end
  attr_reader :int_truthy
  attr_reader :ut
  attr_reader :null_ut
  attr_reader :int_array
  attr_reader :int_array_empty
end
