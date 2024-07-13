# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrEncodingsEscapingToS < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @len_of_1 = @_io.read_u2le
    @str1_raw = @_io.read_bytes(len_of_1)
    @len_of_2 = @_io.read_u2le
    @str2_raw = @_io.read_bytes(len_of_2)
    @len_of_3 = @_io.read_u2le
    @str3_raw = @_io.read_bytes(len_of_3)
    @len_of_4 = @_io.read_u2le
    @str4_raw = @_io.read_bytes(len_of_4)
    self
  end
  def str1
    return @str1 unless @str1.nil?
    @str1 = (str1_raw).force_encoding("ASCII\\\\x").encode('UTF-8')
    @str1
  end
  def str2
    return @str2 unless @str2.nil?
    @str2 = (str2_raw).force_encoding("UTF-8\\'x").encode('UTF-8')
    @str2
  end
  def str3
    return @str3 unless @str3.nil?
    @str3 = (str3_raw).force_encoding("SJIS\\\"x").encode('UTF-8')
    @str3
  end
  def str4
    return @str4 unless @str4.nil?
    @str4 = (str4_raw).force_encoding("IBM437\\nx").encode('UTF-8')
    @str4
  end
  attr_reader :len_of_1
  attr_reader :str1_raw
  attr_reader :len_of_2
  attr_reader :str2_raw
  attr_reader :len_of_3
  attr_reader :str3_raw
  attr_reader :len_of_4
  attr_reader :str4_raw
end
