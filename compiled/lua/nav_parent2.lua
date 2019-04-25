-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

NavParent2 = class.class(KaitaiStruct)

function NavParent2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParent2:_read()
  self.ofs_tags = self._io:read_u4le()
  self.num_tags = self._io:read_u4le()
  self.tags = {}
  for i = 1, self.num_tags do
    self.tags[i] = NavParent2.Tag(self._io, self, self._root)
  end
end


NavParent2.Tag = class.class(KaitaiStruct)

function NavParent2.Tag:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParent2.Tag:_read()
  self.name = str_decode.decode(self._io:read_bytes(4), "ASCII")
  self.ofs = self._io:read_u4le()
  self.num_items = self._io:read_u4le()
end

NavParent2.Tag.property.tag_content = {}
function NavParent2.Tag.property.tag_content:get()
  if self._m_tag_content ~= nil then
    return self._m_tag_content
  end

  local _io = self._root._io
  local _pos = _io:pos()
  _io:seek(self.ofs)
  local _on = self.name
  if _on == "RAHC" then
    self._m_tag_content = NavParent2.Tag.TagChar(_io, self, self._root)
  end
  _io:seek(_pos)
  return self._m_tag_content
end


NavParent2.Tag.TagChar = class.class(KaitaiStruct)

function NavParent2.Tag.TagChar:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParent2.Tag.TagChar:_read()
  self.content = str_decode.decode(self._io:read_bytes(self._parent.num_items), "ASCII")
end


