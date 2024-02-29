# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Expr2 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @str1 = ModStr.new(@_io, self, @_root)
    @str2 = ModStr.new(@_io, self, @_root)
    self
  end
  class ModStr < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @len_orig = @_io.read_u2le
      @str = (@_io.read_bytes(len_mod)).force_encoding("UTF-8")
      _io_rest = @_io.substream(3)
      @rest = Tuple.new(_io_rest, self, @_root)
      self
    end
    def char5
      return @char5 unless @char5.nil?
      _pos = @_io.pos
      @_io.seek(5)
      @char5 = (@_io.read_bytes(1)).force_encoding("ASCII").encode('UTF-8')
      @_io.seek(_pos)
      @char5
    end
    def len_mod
      return @len_mod unless @len_mod.nil?
      @len_mod = (len_orig - 3)
      @len_mod
    end
    def tuple5
      return @tuple5 unless @tuple5.nil?
      _pos = @_io.pos
      @_io.seek(5)
      @tuple5 = Tuple.new(@_io, self, @_root)
      @_io.seek(_pos)
      @tuple5
    end
    attr_reader :len_orig
    attr_reader :str
    attr_reader :rest
    attr_reader :_raw_rest
  end
  class Tuple < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @byte0 = @_io.read_u1
      @byte1 = @_io.read_u1
      @byte2 = @_io.read_u1
      self
    end
    def avg
      return @avg unless @avg.nil?
      @avg = ((byte1 + byte2) / 2)
      @avg
    end
    attr_reader :byte0
    attr_reader :byte1
    attr_reader :byte2
  end
  def str1_avg
    return @str1_avg unless @str1_avg.nil?
    @str1_avg = str1.rest.avg
    @str1_avg
  end
  def str1_byte1
    return @str1_byte1 unless @str1_byte1.nil?
    @str1_byte1 = str1.rest.byte1
    @str1_byte1
  end
  def str1_char5
    return @str1_char5 unless @str1_char5.nil?
    @str1_char5 = str1.char5
    @str1_char5
  end
  def str1_len
    return @str1_len unless @str1_len.nil?
    @str1_len = str1.str.size
    @str1_len
  end
  def str1_len_mod
    return @str1_len_mod unless @str1_len_mod.nil?
    @str1_len_mod = str1.len_mod
    @str1_len_mod
  end
  def str1_tuple5
    return @str1_tuple5 unless @str1_tuple5.nil?
    @str1_tuple5 = str1.tuple5
    @str1_tuple5
  end
  def str2_tuple5
    return @str2_tuple5 unless @str2_tuple5.nil?
    @str2_tuple5 = str2.tuple5
    @str2_tuple5
  end
  attr_reader :str1
  attr_reader :str2
end
