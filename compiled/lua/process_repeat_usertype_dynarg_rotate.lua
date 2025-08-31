-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ProcessRepeatUsertypeDynargRotate = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargRotate:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessRepeatUsertypeDynargRotate:_read()
  self._raw_blocks_rol = {}
  self._raw__raw_blocks_rol = {}
  self.blocks_rol = {}
  for i = 0, 2 - 1 do
    self._raw__raw_blocks_rol[i + 1] = self._io:read_bytes(3)
    self._raw_blocks_rol[i + 1] = KaitaiStream.process_rotate_left(self._raw__raw_blocks_rol[i + 1], self._io:pos() - 4 * i, 1)
    local _io = KaitaiStream(stringstream(self._raw_blocks_rol[i + 1]))
    self.blocks_rol[i + 1] = ProcessRepeatUsertypeDynargRotate.Block(_io, self, self._root)
  end
  self._raw_blocks_ror = {}
  self._raw__raw_blocks_ror = {}
  self.blocks_ror = {}
  for i = 0, 3 - 1 do
    self._raw__raw_blocks_ror[i + 1] = self._io:read_bytes(3)
    self._raw_blocks_ror[i + 1] = KaitaiStream.process_rotate_left(self._raw__raw_blocks_ror[i + 1], 8 - ((self._io:pos() - 6) - 4 * i), 1)
    local _io = KaitaiStream(stringstream(self._raw_blocks_ror[i + 1]))
    self.blocks_ror[i + 1] = ProcessRepeatUsertypeDynargRotate.Block(_io, self, self._root)
  end
  self.blocks_b = ProcessRepeatUsertypeDynargRotate.BlocksBWrapper(self._io, self, self._root)
end


ProcessRepeatUsertypeDynargRotate.Block = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargRotate.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessRepeatUsertypeDynargRotate.Block:_read()
  self.a = self._io:read_u2le()
end


ProcessRepeatUsertypeDynargRotate.BlocksBWrapper = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargRotate.BlocksBWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessRepeatUsertypeDynargRotate.BlocksBWrapper:_read()
  self.dummy = self._io:read_u1()
end

ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_rol_0_b = {}
function ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_rol_0_b:get()
  if self._m_blocks_rol_0_b ~= nil then
    return self._m_blocks_rol_0_b
  end

  local _io = self._parent.blocks_rol[0 + 1]._io
  local _pos = _io:pos()
  _io:seek(2)
  self._m_blocks_rol_0_b = _io:read_u1()
  _io:seek(_pos)
  return self._m_blocks_rol_0_b
end

ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_rol_1_b = {}
function ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_rol_1_b:get()
  if self._m_blocks_rol_1_b ~= nil then
    return self._m_blocks_rol_1_b
  end

  local _io = self._parent.blocks_rol[1 + 1]._io
  local _pos = _io:pos()
  _io:seek(2)
  self._m_blocks_rol_1_b = _io:read_u1()
  _io:seek(_pos)
  return self._m_blocks_rol_1_b
end

ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_ror_0_b = {}
function ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_ror_0_b:get()
  if self._m_blocks_ror_0_b ~= nil then
    return self._m_blocks_ror_0_b
  end

  local _io = self._parent.blocks_ror[0 + 1]._io
  local _pos = _io:pos()
  _io:seek(2)
  self._m_blocks_ror_0_b = _io:read_u1()
  _io:seek(_pos)
  return self._m_blocks_ror_0_b
end

ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_ror_1_b = {}
function ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_ror_1_b:get()
  if self._m_blocks_ror_1_b ~= nil then
    return self._m_blocks_ror_1_b
  end

  local _io = self._parent.blocks_ror[1 + 1]._io
  local _pos = _io:pos()
  _io:seek(2)
  self._m_blocks_ror_1_b = _io:read_u1()
  _io:seek(_pos)
  return self._m_blocks_ror_1_b
end

ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_ror_2_b = {}
function ProcessRepeatUsertypeDynargRotate.BlocksBWrapper.property.blocks_ror_2_b:get()
  if self._m_blocks_ror_2_b ~= nil then
    return self._m_blocks_ror_2_b
  end

  local _io = self._parent.blocks_ror[2 + 1]._io
  local _pos = _io:pos()
  _io:seek(2)
  self._m_blocks_ror_2_b = _io:read_u1()
  _io:seek(_pos)
  return self._m_blocks_ror_2_b
end


