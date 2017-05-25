# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Expr0 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @len_of_1 = @_io.read_u2le
  end
  def must_be_f7
    return @must_be_f7 unless @must_be_f7.nil?
    @must_be_f7 = (7 + 240)
    @must_be_f7
  end
  def must_be_abc123
    return @must_be_abc123 unless @must_be_abc123.nil?
    @must_be_abc123 = "abc" + "123"
    @must_be_abc123
  end
  attr_reader :len_of_1
end
