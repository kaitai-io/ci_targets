-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ExprSizeofValueSized = class.class(KaitaiStruct)

function ExprSizeofValueSized:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprSizeofValueSized:_read()
  self._raw_block1 = self._io:read_bytes(12)
  local _io = KaitaiStream(stringstream(self._raw_block1))
  self.block1 = ExprSizeofValueSized.Block(_io, self, self._root)
  self.more = self._io:read_u2le()
end

ExprSizeofValueSized.property.self_sizeof = {}
function ExprSizeofValueSized.property.self_sizeof:get()
  if self._m_self_sizeof ~= nil then
    return self._m_self_sizeof
  end

  self._m_self_sizeof = 14
  return self._m_self_sizeof
end

ExprSizeofValueSized.property.sizeof_block = {}
function ExprSizeofValueSized.property.sizeof_block:get()
  if self._m_sizeof_block ~= nil then
    return self._m_sizeof_block
  end

  self._m_sizeof_block = 12
  return self._m_sizeof_block
end

ExprSizeofValueSized.property.sizeof_block_b = {}
function ExprSizeofValueSized.property.sizeof_block_b:get()
  if self._m_sizeof_block_b ~= nil then
    return self._m_sizeof_block_b
  end

  self._m_sizeof_block_b = 4
  return self._m_sizeof_block_b
end

ExprSizeofValueSized.property.sizeof_block_a = {}
function ExprSizeofValueSized.property.sizeof_block_a:get()
  if self._m_sizeof_block_a ~= nil then
    return self._m_sizeof_block_a
  end

  self._m_sizeof_block_a = 1
  return self._m_sizeof_block_a
end

ExprSizeofValueSized.property.sizeof_block_c = {}
function ExprSizeofValueSized.property.sizeof_block_c:get()
  if self._m_sizeof_block_c ~= nil then
    return self._m_sizeof_block_c
  end

  self._m_sizeof_block_c = 2
  return self._m_sizeof_block_c
end


ExprSizeofValueSized.Block = class.class(KaitaiStruct)

function ExprSizeofValueSized.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprSizeofValueSized.Block:_read()
  self.a = self._io:read_u1()
  self.b = self._io:read_u4le()
  self.c = self._io:read_bytes(2)
end


