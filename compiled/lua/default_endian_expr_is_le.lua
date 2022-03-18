-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DefaultEndianExprIsLe = class.class(KaitaiStruct)

function DefaultEndianExprIsLe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprIsLe:_read()
  self.docs = {}
  local i = 0
  while not self._io:is_eof() do
    self.docs[i + 1] = DefaultEndianExprIsLe.Doc(self._io, self, self._root)
    i = i + 1
  end
end


DefaultEndianExprIsLe.Doc = class.class(KaitaiStruct)

function DefaultEndianExprIsLe.Doc:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprIsLe.Doc:_read()
  self.indicator = self._io:read_bytes(2)
  self.main = DefaultEndianExprIsLe.Doc.MainObj(self._io, self, self._root)
end


DefaultEndianExprIsLe.Doc.MainObj = class.class(KaitaiStruct)

function DefaultEndianExprIsLe.Doc.MainObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianExprIsLe.Doc.MainObj:_read()
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

function DefaultEndianExprIsLe.Doc.MainObj:_read_le()
  self.some_int = self._io:read_u4le()
  self.some_int_be = self._io:read_u2be()
  self.some_int_le = self._io:read_u2le()
end

function DefaultEndianExprIsLe.Doc.MainObj:_read_be()
  self.some_int = self._io:read_u4be()
  self.some_int_be = self._io:read_u2be()
  self.some_int_le = self._io:read_u2le()
end


