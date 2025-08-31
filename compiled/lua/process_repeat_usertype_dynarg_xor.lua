-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ProcessRepeatUsertypeDynargXor = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargXor:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessRepeatUsertypeDynargXor:_read()
  self._raw_blocks = {}
  self._raw__raw_blocks = {}
  self.blocks = {}
  for i = 0, 2 - 1 do
    self._raw__raw_blocks[i + 1] = self._io:read_bytes(5)
    self._raw_blocks[i + 1] = KaitaiStream.process_xor_one(self._raw__raw_blocks[i + 1], 155 ~ (i << 4 | self._io:pos()))
    local _io = KaitaiStream(stringstream(self._raw_blocks[i + 1]))
    self.blocks[i + 1] = ProcessRepeatUsertypeDynargXor.Block(_io, self, self._root)
  end
  self.blocks_b = ProcessRepeatUsertypeDynargXor.BlocksBWrapper(self._io, self, self._root)
end


ProcessRepeatUsertypeDynargXor.Block = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargXor.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessRepeatUsertypeDynargXor.Block:_read()
  self.a = self._io:read_u4le()
end


ProcessRepeatUsertypeDynargXor.BlocksBWrapper = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargXor.BlocksBWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessRepeatUsertypeDynargXor.BlocksBWrapper:_read()
  self.dummy = self._io:read_u1()
end

ProcessRepeatUsertypeDynargXor.BlocksBWrapper.property.blocks_0_b = {}
function ProcessRepeatUsertypeDynargXor.BlocksBWrapper.property.blocks_0_b:get()
  if self._m_blocks_0_b ~= nil then
    return self._m_blocks_0_b
  end

  local _io = self._parent.blocks[0 + 1]._io
  local _pos = _io:pos()
  _io:seek(4)
  self._m_blocks_0_b = _io:read_u1()
  _io:seek(_pos)
  return self._m_blocks_0_b
end

ProcessRepeatUsertypeDynargXor.BlocksBWrapper.property.blocks_1_b = {}
function ProcessRepeatUsertypeDynargXor.BlocksBWrapper.property.blocks_1_b:get()
  if self._m_blocks_1_b ~= nil then
    return self._m_blocks_1_b
  end

  local _io = self._parent.blocks[1 + 1]._io
  local _pos = _io:pos()
  _io:seek(4)
  self._m_blocks_1_b = _io:read_u1()
  _io:seek(_pos)
  return self._m_blocks_1_b
end


