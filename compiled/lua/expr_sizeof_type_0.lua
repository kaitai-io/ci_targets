-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprSizeofType0 = class.class(KaitaiStruct)

function ExprSizeofType0:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprSizeofType0:_read()
end

ExprSizeofType0.property.sizeof_block = {}
function ExprSizeofType0.property.sizeof_block:get()
  if self._m_sizeof_block ~= nil then
    return self._m_sizeof_block
  end

  self._m_sizeof_block = 7
  return self._m_sizeof_block
end


ExprSizeofType0.Block = class.class(KaitaiStruct)

function ExprSizeofType0.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ExprSizeofType0.Block:_read()
  self.a = self._io:read_u1()
  self.b = self._io:read_u4le()
  self.c = self._io:read_bytes(2)
end


