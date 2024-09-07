# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidEqStrEncodings < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @len_of_1 = @_io.read_u2le
    @str1 = (@_io.read_bytes(len_of_1)).force_encoding("ASCII").encode('UTF-8')
    raise Kaitai::Struct::ValidationNotEqualError.new("Some ASCII", @str1, @_io, "/seq/1") if not @str1 == "Some ASCII"
    @len_of_2 = @_io.read_u2le
    @str2 = (@_io.read_bytes(len_of_2)).force_encoding("UTF-8")
    raise Kaitai::Struct::ValidationNotEqualError.new("\u3053\u3093\u306b\u3061\u306f", @str2, @_io, "/seq/3") if not @str2 == "\u3053\u3093\u306b\u3061\u306f"
    @len_of_3 = @_io.read_u2le
    @str3 = (@_io.read_bytes(len_of_3)).force_encoding("Shift_JIS").encode('UTF-8')
    raise Kaitai::Struct::ValidationNotEqualError.new("\u3053\u3093\u306b\u3061\u306f", @str3, @_io, "/seq/5") if not @str3 == "\u3053\u3093\u306b\u3061\u306f"
    @len_of_4 = @_io.read_u2le
    @str4 = (@_io.read_bytes(len_of_4)).force_encoding("IBM437").encode('UTF-8')
    raise Kaitai::Struct::ValidationNotEqualError.new("\u2591\u2592\u2593", @str4, @_io, "/seq/7") if not @str4 == "\u2591\u2592\u2593"
    self
  end
  attr_reader :len_of_1
  attr_reader :str1
  attr_reader :len_of_2
  attr_reader :str2
  attr_reader :len_of_3
  attr_reader :str3
  attr_reader :len_of_4
  attr_reader :str4
end
