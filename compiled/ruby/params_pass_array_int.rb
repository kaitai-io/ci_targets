# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsPassArrayInt < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @ints = []
    (3).times { |i|
      @ints << @_io.read_u2le
    }
    @pass_ints = WantsInts.new(@_io, self, @_root, ints)
    @pass_ints_calc = WantsInts.new(@_io, self, @_root, ints_calc)
    self
  end
  class WantsInts < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil, nums)
      super(_io, _parent, _root)
      @nums = nums
      _read
    end

    def _read
      self
    end
    attr_reader :nums
  end
  def ints_calc
    return @ints_calc unless @ints_calc.nil?
    @ints_calc = [27643, 7]
    @ints_calc
  end
  attr_reader :ints
  attr_reader :pass_ints
  attr_reader :pass_ints_calc
end
