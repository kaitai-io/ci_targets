-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DefaultEndianExprInherited = class.class(KaitaiStruct)

function DefaultEndianExprInherited:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprInherited:_read()
  self.docs = {}
  local i = 0
  while not self._io:is_eof() do
    self.docs[i + 1] = DefaultEndianExprInherited.Doc(self._io, self, self._root)
    i = i + 1
  end
end


DefaultEndianExprInherited.Doc = class.class(KaitaiStruct)

function DefaultEndianExprInherited.Doc:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprInherited.Doc:_read()
  self.indicator = self._io:read_bytes(2)
  self.main = DefaultEndianExprInherited.Doc.MainObj(self._io, self, self._root)
end


DefaultEndianExprInherited.Doc.MainObj = class.class(KaitaiStruct)

function DefaultEndianExprInherited.Doc.MainObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprInherited.Doc.MainObj:_read()
  local _on = self._parent.indicator
  if _on == "\073\073" then
    self._is_le = true
  else
    self._is_le = false
  end

  if self._is_le == true then
    self:_read_le()
  elseif self._is_le == false then
    self:_read_be()
  else
    error("unable to decide endianness")
  end
end

function DefaultEndianExprInherited.Doc.MainObj:_read_le()
  self.insides = DefaultEndianExprInherited.Doc.MainObj.SubObj(self._io, self, self._root, self._is_le)
end

function DefaultEndianExprInherited.Doc.MainObj:_read_be()
  self.insides = DefaultEndianExprInherited.Doc.MainObj.SubObj(self._io, self, self._root, self._is_le)
end


DefaultEndianExprInherited.Doc.MainObj.SubObj = class.class(KaitaiStruct)

function DefaultEndianExprInherited.Doc.MainObj.SubObj:_init(io, parent, root, is_le)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self._is_le = is_le
  self:_read()
end

function DefaultEndianExprInherited.Doc.MainObj.SubObj:_read()

  if self._is_le == true then
    self:_read_le()
  elseif self._is_le == false then
    self:_read_be()
  else
    error("unable to decide endianness")
  end
end

function DefaultEndianExprInherited.Doc.MainObj.SubObj:_read_le()
  self.some_int = self._io:read_u4le()
  self.more = DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj(self._io, self, self._root, self._is_le)
end

function DefaultEndianExprInherited.Doc.MainObj.SubObj:_read_be()
  self.some_int = self._io:read_u4be()
  self.more = DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj(self._io, self, self._root, self._is_le)
end


DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj = class.class(KaitaiStruct)

function DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj:_init(io, parent, root, is_le)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self._is_le = is_le
  self:_read()
end

function DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj:_read()

  if self._is_le == true then
    self:_read_le()
  elseif self._is_le == false then
    self:_read_be()
  else
    error("unable to decide endianness")
  end
end

function DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj:_read_le()
  self.some_int1 = self._io:read_u2le()
  self.some_int2 = self._io:read_u2le()
end

function DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj:_read_be()
  self.some_int1 = self._io:read_u2be()
  self.some_int2 = self._io:read_u2be()
end

DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj.property.some_inst = {}
function DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj.property.some_inst:get()
  if self._m_some_inst ~= nil then
    return self._m_some_inst
  end

  local _pos = self._io:pos()
  self._io:seek(2)
  if self._is_le then
    self._m_some_inst = self._io:read_u4le()
  else
    self._m_some_inst = self._io:read_u4be()
  end
  self._io:seek(_pos)
  return self._m_some_inst
end


