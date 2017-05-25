# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class OpaqueExternalType02Child < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @s1 = (@_io.read_bytes_term(124, false, true, true)).force_encoding("UTF-8")
    @s2 = (@_io.read_bytes_term(124, false, false, true)).force_encoding("UTF-8")
    @s3 = OpaqueExternalType02ChildChild.new(@_io, self, @_root)
  end
  class OpaqueExternalType02ChildChild < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end
    def _read
      if _root.some_method
        @s3 = (@_io.read_bytes_term(64, true, true, true)).force_encoding("UTF-8")
      end
    end
    attr_reader :s3
  end
  def some_method
    return @some_method unless @some_method.nil?
    @some_method = true
    @some_method
  end
  attr_reader :s1
  attr_reader :s2
  attr_reader :s3
end
