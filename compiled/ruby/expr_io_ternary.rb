# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIoTernary < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @flag = @_io.read_u1
    _io_obj1 = @_io.substream(4)
    @obj1 = One.new(_io_obj1, self, @_root)
    _io_obj2 = @_io.substream(8)
    @obj2 = Two.new(_io_obj2, self, @_root)
    self
  end
  class One < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @one = @_io.read_u1
      self
    end
    attr_reader :one
  end
  class Two < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @two = @_io.read_u1
      self
    end
    attr_reader :two
  end
  def one_or_two_io
    return @one_or_two_io unless @one_or_two_io.nil?
    @one_or_two_io = (flag == 64 ? obj1 : obj2)._io
    @one_or_two_io
  end
  def one_or_two_io_size1
    return @one_or_two_io_size1 unless @one_or_two_io_size1.nil?
    @one_or_two_io_size1 = (flag == 64 ? obj1 : obj2)._io.size
    @one_or_two_io_size1
  end
  def one_or_two_io_size2
    return @one_or_two_io_size2 unless @one_or_two_io_size2.nil?
    @one_or_two_io_size2 = one_or_two_io.size
    @one_or_two_io_size2
  end
  def one_or_two_io_size_add_3
    return @one_or_two_io_size_add_3 unless @one_or_two_io_size_add_3.nil?
    @one_or_two_io_size_add_3 = (flag == 64 ? obj1 : obj2)._io.size + 3
    @one_or_two_io_size_add_3
  end
  def one_or_two_obj
    return @one_or_two_obj unless @one_or_two_obj.nil?
    @one_or_two_obj = (flag == 64 ? obj1 : obj2)
    @one_or_two_obj
  end
  attr_reader :flag
  attr_reader :obj1
  attr_reader :obj2
  attr_reader :_raw_obj1
  attr_reader :_raw_obj2
end
