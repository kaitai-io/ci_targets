# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprCalcArrayOps < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    self
  end
  def double_array_mid
    return @double_array_mid unless @double_array_mid.nil?
    @double_array_mid = double_array[1]
    @double_array_mid
  end
  def str_array_size
    return @str_array_size unless @str_array_size.nil?
    @str_array_size = str_array.length
    @str_array_size
  end
  def int_array_mid
    return @int_array_mid unless @int_array_mid.nil?
    @int_array_mid = int_array[1]
    @int_array_mid
  end
  def double_array_last
    return @double_array_last unless @double_array_last.nil?
    @double_array_last = double_array.last
    @double_array_last
  end
  def double_array_max
    return @double_array_max unless @double_array_max.nil?
    @double_array_max = double_array.max
    @double_array_max
  end
  def int_array
    return @int_array unless @int_array.nil?
    @int_array = [10, 25, 50, 100, 200, 500, 1000]
    @int_array
  end
  def double_array_min
    return @double_array_min unless @double_array_min.nil?
    @double_array_min = double_array.min
    @double_array_min
  end
  def str_array_mid
    return @str_array_mid unless @str_array_mid.nil?
    @str_array_mid = str_array[1]
    @str_array_mid
  end
  def int_array_min
    return @int_array_min unless @int_array_min.nil?
    @int_array_min = int_array.min
    @int_array_min
  end
  def int_array_max
    return @int_array_max unless @int_array_max.nil?
    @int_array_max = int_array.max
    @int_array_max
  end
  def int_array_size
    return @int_array_size unless @int_array_size.nil?
    @int_array_size = int_array.length
    @int_array_size
  end
  def double_array_size
    return @double_array_size unless @double_array_size.nil?
    @double_array_size = double_array.length
    @double_array_size
  end
  def double_array
    return @double_array unless @double_array.nil?
    @double_array = [10.0, 25.0, 50.0, 100.0, 3.14159]
    @double_array
  end
  def double_array_first
    return @double_array_first unless @double_array_first.nil?
    @double_array_first = double_array.first
    @double_array_first
  end
  def int_array_first
    return @int_array_first unless @int_array_first.nil?
    @int_array_first = int_array.first
    @int_array_first
  end
  def int_array_last
    return @int_array_last unless @int_array_last.nil?
    @int_array_last = int_array.last
    @int_array_last
  end
  def str_array_min
    return @str_array_min unless @str_array_min.nil?
    @str_array_min = str_array.min
    @str_array_min
  end
  def str_array
    return @str_array unless @str_array.nil?
    @str_array = ["un", "deux", "trois", "quatre"]
    @str_array
  end
  def str_array_first
    return @str_array_first unless @str_array_first.nil?
    @str_array_first = str_array.first
    @str_array_first
  end
  def str_array_max
    return @str_array_max unless @str_array_max.nil?
    @str_array_max = str_array.max
    @str_array_max
  end
  def str_array_last
    return @str_array_last unless @str_array_last.nil?
    @str_array_last = str_array.last
    @str_array_last
  end
end
