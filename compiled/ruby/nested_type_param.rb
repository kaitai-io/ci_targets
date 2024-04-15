# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NestedTypeParam < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @main_seq = Nested::MyType.new(@_io, self, @_root, 5)
    self
  end
  class Nested < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    class MyType < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil, my_len)
        super(_io, _parent, _root)
        @my_len = my_len
        _read
      end

      def _read
        @body = (@_io.read_bytes(my_len)).force_encoding("ASCII").encode('UTF-8')
        self
      end
      attr_reader :body
      attr_reader :my_len
    end
  end
  attr_reader :main_seq
end
