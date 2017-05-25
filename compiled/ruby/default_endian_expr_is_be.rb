# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class DefaultEndianExprIsBe < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @docs = []
    while not @_io.eof?
      @docs << Doc.new(@_io, self, @_root)
    end
  end
  class Doc < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end
    def _read
      @indicator = @_io.read_bytes(2)
      @main = MainObj.new(@_io, self, @_root)
    end
    class MainObj < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        case _parent.indicator
        when [77, 77].pack('C*')
          @_is_le = false
        else
          @_is_le = true
        end

        if @_is_le == true
          _read_le
        elsif @_is_le == false
          _read_be
        else
          raise Kaitai::Struct::Stream::UndecidedEndiannessError
        end
      end
      def _read_le
        @some_int = @_io.read_u4le
        @some_int_be = @_io.read_u2be
        @some_int_le = @_io.read_u2le
      end
      def _read_be
        @some_int = @_io.read_u4be
        @some_int_be = @_io.read_u2be
        @some_int_le = @_io.read_u2le
      end
      class SubMainObj < Kaitai::Struct::Struct
        def initialize(_io, _parent = nil, _root = self, _is_le = nil)
          super(_io, _parent, _root)
          @_is_le = _is_le

          if @_is_le == true
            _read_le
          elsif @_is_le == false
            _read_be
          else
            raise Kaitai::Struct::Stream::UndecidedEndiannessError
          end
        end
        def _read_le
          @foo = @_io.read_u4le
        end
        def _read_be
          @foo = @_io.read_u4be
        end
        attr_reader :foo
      end
      def inst_int
        return @inst_int unless @inst_int.nil?
        _pos = @_io.pos
        @_io.seek(2)
        if @_is_le
          @inst_int = @_io.read_u4le
        else
          @inst_int = @_io.read_u4be
        end
        @_io.seek(_pos)
        @inst_int
      end
      def inst_sub
        return @inst_sub unless @inst_sub.nil?
        _pos = @_io.pos
        @_io.seek(2)
        if @_is_le
          @inst_sub = SubMainObj.new(@_io, self, @_root, @_is_le)
        else
          @inst_sub = SubMainObj.new(@_io, self, @_root, @_is_le)
        end
        @_io.seek(_pos)
        @inst_sub
      end
      attr_reader :some_int
      attr_reader :some_int_be
      attr_reader :some_int_le
    end
    attr_reader :indicator
    attr_reader :main
  end
  attr_reader :docs
end
