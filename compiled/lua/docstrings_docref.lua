-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

--[[Another one-liner.
See also: Source (http://www.example.com/some/path/?even_with=query&more=2)--]]
DocstringsDocref = class.class(KaitaiStruct)

function DocstringsDocref:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DocstringsDocref:_read()
  self.one = self._io:read_u1()
  self.two = self._io:read_u1()
  self.three = self._io:read_u1()
end

--[[See also: Doc ref for instance, a plain one--]]
DocstringsDocref.property.foo = {}
function DocstringsDocref.property.foo:get()
  if self._m_foo ~= nil then
    return self._m_foo
  end

  self._m_foo = true
  return self._m_foo
end

--[[See also: Now this is a really
long document ref that
spans multiple lines.
--]]
DocstringsDocref.property.parse_inst = {}
function DocstringsDocref.property.parse_inst:get()
  if self._m_parse_inst ~= nil then
    return self._m_parse_inst
  end

  _pos = self._io:pos()
  self._io:seek(0)
  self._m_parse_inst = self._io:read_u1()
  self._io:seek(_pos)
  return self._m_parse_inst
end

--[[See also: Plain text description of doc ref, page 42--]]
--[[Both doc and doc-ref are defined.
See also: Source (http://www.example.com/with/url/again)--]]
--[[See also: Documentation name (http://www.example.com/three)--]]

