-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DefaultEndianExprIsBe = class.class(KaitaiStruct)

function DefaultEndianExprIsBe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprIsBe:_read()
  self.docs = {}
  local i = 1
  while not self._io:is_eof() do
    self.docs[i] = DefaultEndianExprIsBe.Doc(self._io, self, self._root)
    i = i + 1
  end
end


DefaultEndianExprIsBe.Doc = class.class(KaitaiStruct)

function DefaultEndianExprIsBe.Doc:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprIsBe.Doc:_read()
  self.indicator = self._io:read_bytes(2)
  self.main = DefaultEndianExprIsBe.Doc.MainObj(self._io, self, self._root)
end


DefaultEndianExprIsBe.Doc.MainObj = class.class(KaitaiStruct)

function DefaultEndianExprIsBe.Doc.MainObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprIsBe.Doc.MainObj:_read()
  local _on = self._parent.indicator
  if _on == "\077\077" then
    self._is_le = false
  else
    self._is_le = true
  end

  if self._is_le then
    self:_read_le()
  elseif not self._is_le then
    self:_read_be()
  else
    error("unable to decide endianness")
  end
end

function DefaultEndianExprIsBe.Doc.MainObj:_read_le()
  self.some_int = self._io:read_u4le()
  self.some_int_be = self._io:read_u2be()
  self.some_int_le = self._io:read_u2le()
end

function DefaultEndianExprIsBe.Doc.MainObj:_read_be()
  self.some_int = self._io:read_u4be()
  self.some_int_be = self._io:read_u2be()
  self.some_int_le = self._io:read_u2le()
end

DefaultEndianExprIsBe.Doc.MainObj.property.inst_int = {}
function DefaultEndianExprIsBe.Doc.MainObj.property.inst_int:get()
  if self._m_inst_int ~= nil then
    return self._m_inst_int
  end

  _pos = self._io:pos()
  self._io:seek(2)
  if self._is_le then
    self._m_inst_int = self._io:read_u4le()
  else
    self._m_inst_int = self._io:read_u4be()
  end
  self._io:seek(_pos)
  return self._m_inst_int
end

DefaultEndianExprIsBe.Doc.MainObj.property.inst_sub = {}
function DefaultEndianExprIsBe.Doc.MainObj.property.inst_sub:get()
  if self._m_inst_sub ~= nil then
    return self._m_inst_sub
  end

  _pos = self._io:pos()
  self._io:seek(2)
  if self._is_le then
    self._m_inst_sub = DefaultEndianExprIsBe.Doc.MainObj.SubMainObj(self._io, self, self._root, self._is_le)
  else
    self._m_inst_sub = DefaultEndianExprIsBe.Doc.MainObj.SubMainObj(self._io, self, self._root, self._is_le)
  end
  self._io:seek(_pos)
  return self._m_inst_sub
end


DefaultEndianExprIsBe.Doc.MainObj.SubMainObj = class.class(KaitaiStruct)

function DefaultEndianExprIsBe.Doc.MainObj.SubMainObj:_init(io, parent, root, is_le)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self._is_le = is_le
  self:_read()
end

function DefaultEndianExprIsBe.Doc.MainObj.SubMainObj:_read()

  if self._is_le then
    self:_read_le()
  elseif not self._is_le then
    self:_read_be()
  else
    error("unable to decide endianness")
  end
end

function DefaultEndianExprIsBe.Doc.MainObj.SubMainObj:_read_le()
  self.foo = self._io:read_u4le()
end

function DefaultEndianExprIsBe.Doc.MainObj.SubMainObj:_read_be()
  self.foo = self._io:read_u4be()
end


