-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ProcessRepeatUsertype = class.class(KaitaiStruct)

function ProcessRepeatUsertype:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessRepeatUsertype:_read()
  self._raw_blocks = {}
  self.blocks = {}
  for i = 1, 2 do
    self._raw__raw_blocks[i] = self._io:read_bytes(5)
    self._raw_blocks = KaitaiStream.process_xor_one(self._raw__raw_blocks, 158)
    local _io = KaitaiStream(stringstream(self._raw_blocks[i]))
    self.blocks[i] = ProcessRepeatUsertype.Block(_io, self, self._root)
  end
end


ProcessRepeatUsertype.Block = class.class(KaitaiStruct)

function ProcessRepeatUsertype.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessRepeatUsertype.Block:_read()
  self.a = self._io:read_s4le()
  self.b = self._io:read_s1()
end


