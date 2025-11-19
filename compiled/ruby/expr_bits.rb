# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprBits < Kaitai::Struct::Struct

  ITEMS = {
    1 => :items_foo,
    2 => :items_bar,
  }
  I__ITEMS = ITEMS.invert
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @enum_seq = Kaitai::Struct::Stream::resolve_enum(ITEMS, @_io.read_bits_int_be(2))
    @a = @_io.read_bits_int_be(3)
    @byte_size = @_io.read_bytes(a)
    @repeat_expr = []
    (a).times { |i|
      @repeat_expr << @_io.read_s1
    }
    case a
    when 2
      @switch_on_type = @_io.read_s1
    end
    @switch_on_endian = EndianSwitch.new(@_io, self, @_root)
    self
  end
  class EndianSwitch < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      case _parent.a
      when 1
        @_is_le = true
      when 2
        @_is_le = false
      end

      if @_is_le == true
        _read_le
      elsif @_is_le == false
        _read_be
      else
        raise Kaitai::Struct::UndecidedEndiannessError.new("/types/endian_switch")
      end
      self
    end

    def _read_le
      @foo = @_io.read_s2le
      self
    end

    def _read_be
      @foo = @_io.read_s2be
      self
    end
    attr_reader :foo
  end
  def enum_inst
    return @enum_inst unless @enum_inst.nil?
    @enum_inst = Kaitai::Struct::Stream::resolve_enum(ITEMS, a)
    @enum_inst
  end
  def inst_pos
    return @inst_pos unless @inst_pos.nil?
    _pos = @_io.pos
    @_io.seek(a)
    @inst_pos = @_io.read_s1
    @_io.seek(_pos)
    @inst_pos
  end
  attr_reader :enum_seq
  attr_reader :a
  attr_reader :byte_size
  attr_reader :repeat_expr
  attr_reader :switch_on_type
  attr_reader :switch_on_endian
end
