# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsEnum < Kaitai::Struct::Struct

  ANIMAL = {
    4 => :animal_dog,
    7 => :animal_cat,
    12 => :animal_chicken,
  }
  I__ANIMAL = ANIMAL.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @one = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u1)
    @invoke_with_param = WithParam.new(@_io, self, @_root, one)
    self
  end
  class WithParam < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, enumerated_one)
      super(_io, _parent, _root)
      @enumerated_one = enumerated_one
      _read
    end

    def _read
      self
    end
    def is_cat
      return @is_cat unless @is_cat.nil?
      @is_cat = enumerated_one == :animal_cat
      @is_cat
    end
    attr_reader :enumerated_one
  end
  attr_reader :one
  attr_reader :invoke_with_param
end
