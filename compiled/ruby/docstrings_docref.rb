# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require 'zlib'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end


##
# Another one-liner
# @see http://www.example.com/some/path/?even_with=query&more=2 Source
class DocstringsDocref < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @one = @_io.read_u1
    @two = @_io.read_u1
    @three = @_io.read_u1
  end

  ##
  # @see '' Doc ref for instance, a plain one
  def foo
    return @foo unless @foo.nil?
    @foo = true
    @foo
  end

  ##
  # @see '' Now this is a really
  #   long document ref that
  #   spans multiple lines.
  def parse_inst
    return @parse_inst unless @parse_inst.nil?
    _pos = @_io.pos
    @_io.seek(0)
    @parse_inst = @_io.read_u1
    @_io.seek(_pos)
    @parse_inst
  end

  ##
  # @see '' Plain text description of doc ref, page 42
  attr_reader :one

  ##
  # Both doc and doc-ref are defined
  # @see http://www.example.com/with/url/again Source
  attr_reader :two

  ##
  # @see http://www.example.com/three Documentation name
  attr_reader :three
end
