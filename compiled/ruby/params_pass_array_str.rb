# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsPassArrayStr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @str_array = []
    (3).times { |i|
      @str_array << (@_io.read_bytes(2)).force_encoding("ASCII").encode('UTF-8')
    }
    @pass_str_array = WantsStrs.new(@_io, self, @_root, str_array)
    @pass_str_array_calc = WantsStrs.new(@_io, self, @_root, str_array_calc)
    self
  end
  class WantsStrs < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, strs)
      super(_io, _parent, _root)
      @strs = strs
      _read
    end

    def _read
      self
    end
    attr_reader :strs
  end
  def str_array_calc
    return @str_array_calc unless @str_array_calc.nil?
    @str_array_calc = ["aB", "Cd"]
    @str_array_calc
  end
  attr_reader :str_array
  attr_reader :pass_str_array
  attr_reader :pass_str_array_calc
end
