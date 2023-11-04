# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class DefaultEndianExprInherited < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @docs = []
    i = 0
    while not @_io.eof?
      @docs << Doc.new(@_io, self, @_root)
      i += 1
    end
    self
  end
  class Doc < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @indicator = @_io.read_bytes(2)
      @main = MainObj.new(@_io, self, @_root)
      self
    end
    class MainObj < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        case _parent.indicator
        when [73, 73].pack('C*')
          @_is_le = true
        else
          @_is_le = false
        end

        if @_is_le == true
          _read_le
        elsif @_is_le == false
          _read_be
        else
          raise Kaitai::Struct::UndecidedEndiannessError.new("/types/doc/types/main_obj")
        end
        self
      end

      def _read_le
        @insides = SubObj.new(@_io, self, @_root, @_is_le)
        self
      end

      def _read_be
        @insides = SubObj.new(@_io, self, @_root, @_is_le)
        self
      end
      class SubObj < Kaitai::Struct::Struct
        def initialize(_io, _parent = nil, _root = self, _is_le = nil)
          super(_io, _parent, _root)
          @_is_le = _is_le
          _read
        end

        def _read

          if @_is_le == true
            _read_le
          elsif @_is_le == false
            _read_be
          else
            raise Kaitai::Struct::UndecidedEndiannessError.new("/types/doc/types/main_obj/types/sub_obj")
          end
          self
        end

        def _read_le
          @some_int = @_io.read_u4le
          @more = SubsubObj.new(@_io, self, @_root, @_is_le)
          self
        end

        def _read_be
          @some_int = @_io.read_u4be
          @more = SubsubObj.new(@_io, self, @_root, @_is_le)
          self
        end
        class SubsubObj < Kaitai::Struct::Struct
          def initialize(_io, _parent = nil, _root = self, _is_le = nil)
            super(_io, _parent, _root)
            @_is_le = _is_le
            _read
          end

          def _read

            if @_is_le == true
              _read_le
            elsif @_is_le == false
              _read_be
            else
              raise Kaitai::Struct::UndecidedEndiannessError.new("/types/doc/types/main_obj/types/sub_obj/types/subsub_obj")
            end
            self
          end

          def _read_le
            @some_int1 = @_io.read_u2le
            @some_int2 = @_io.read_u2le
            self
          end

          def _read_be
            @some_int1 = @_io.read_u2be
            @some_int2 = @_io.read_u2be
            self
          end
          def some_inst
            return @some_inst unless @some_inst.nil?
            _pos = @_io.pos
            @_io.seek(2)
            if @_is_le
              @some_inst = @_io.read_u4le
            else
              @some_inst = @_io.read_u4be
            end
            @_io.seek(_pos)
            @some_inst
          end
          attr_reader :some_int1
          attr_reader :some_int2
        end
        attr_reader :some_int
        attr_reader :more
      end
      attr_reader :insides
    end
    attr_reader :indicator
    attr_reader :main
  end
  attr_reader :docs
end
