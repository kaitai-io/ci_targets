-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("my_custom_fx")
local utils = require("utils")
local stringstream = require("string_stream")

ProcessRepeatUsertypeDynargCustom = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargCustom:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessRepeatUsertypeDynargCustom:_read()
  self._raw_blocks = {}
  self._raw__raw_blocks = {}
  self.blocks = {}
  for i = 0, 2 - 1 do
    self._raw__raw_blocks[i + 1] = self._io:read_bytes(5)
    local _process__raw__raw_blocks = MyCustomFx(self._io:pos() + 13 * i, self._io:pos() % 2 == 0, utils.box_unwrap((i == 1) and utils.box_wrap("\032\048") or ("\064")))
    self._raw_blocks[i + 1] = _process__raw__raw_blocks:decode(self._raw__raw_blocks[i + 1])
    local _io = KaitaiStream(stringstream(self._raw_blocks[i + 1]))
    self.blocks[i + 1] = ProcessRepeatUsertypeDynargCustom.Block(_io, self, self._root)
  end
  self.blocks_b = ProcessRepeatUsertypeDynargCustom.BlocksBWrapper(self._io, self, self._root)
end


ProcessRepeatUsertypeDynargCustom.Block = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargCustom.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessRepeatUsertypeDynargCustom.Block:_read()
  self.a = self._io:read_u4le()
end


ProcessRepeatUsertypeDynargCustom.BlocksBWrapper = class.class(KaitaiStruct)

function ProcessRepeatUsertypeDynargCustom.BlocksBWrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ProcessRepeatUsertypeDynargCustom.BlocksBWrapper:_read()
  self.dummy = self._io:read_u1()
end

ProcessRepeatUsertypeDynargCustom.BlocksBWrapper.property.blocks_0_b = {}
function ProcessRepeatUsertypeDynargCustom.BlocksBWrapper.property.blocks_0_b:get()
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

ProcessRepeatUsertypeDynargCustom.BlocksBWrapper.property.blocks_1_b = {}
function ProcessRepeatUsertypeDynargCustom.BlocksBWrapper.property.blocks_1_b:get()
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


