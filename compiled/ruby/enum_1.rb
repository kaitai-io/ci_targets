# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Enum1 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @main = MainObj.new(@_io, self, @_root)
  end
  class MainObj < Kaitai::Struct::Struct

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
      @submain = SubmainObj.new(@_io, self, @_root)
    end
    class SubmainObj < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end
      def _read
        @pet_1 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u4le)
        @pet_2 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u4le)
      end
      attr_reader :pet_1
      attr_reader :pet_2
    end
    attr_reader :submain
  end
  attr_reader :main
end
