# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParent3 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @ofs_tags = @_io.read_u4le
    @num_tags = @_io.read_u4le
    self
  end
  class Tag < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @name = (@_io.read_bytes(4)).force_encoding("ASCII")
      @ofs = @_io.read_u4le
      @num_items = @_io.read_u4le
      self
    end
    class TagChar < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @content = (@_io.read_bytes(_parent.num_items)).force_encoding("ASCII")
        self
      end
      attr_reader :content
    end
    def tag_content
      return @tag_content unless @tag_content.nil?
      io = _root._io
      _pos = io.pos
      io.seek(ofs)
      case name
      when "RAHC"
        @tag_content = TagChar.new(io, self, @_root)
      end
      io.seek(_pos)
      @tag_content
    end
    attr_reader :name
    attr_reader :ofs
    attr_reader :num_items
  end
  def tags
    return @tags unless @tags.nil?
    _pos = @_io.pos
    @_io.seek(ofs_tags)
    @tags = Array.new(num_tags)
    (num_tags).times { |i|
      @tags[i] = Tag.new(@_io, self, @_root)
    }
    @_io.seek(_pos)
    @tags
  end
  attr_reader :ofs_tags
  attr_reader :num_tags
end
