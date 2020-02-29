-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

SwitchDefaultOnly = class.class(KaitaiStruct)

function SwitchDefaultOnly:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchDefaultOnly:_read()
  self.opcode = self._io:read_s1()
  local _on = self.opcode
  else
    self.byte = self._io:read_s1()
  end
  local _on = self.opcode
  else
    self.struct = SwitchDefaultOnly.Data(self._io, self, self._root)
  end
  local _on = self.opcode
  else
    self._raw_struct_sized = self._io:read_bytes(4)
    local _io = KaitaiStream(stringstream(self._raw_struct_sized))
    self.struct_sized = SwitchDefaultOnly.Data(_io, self, self._root)
  end
end


SwitchDefaultOnly.Data = class.class(KaitaiStruct)

function SwitchDefaultOnly.Data:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchDefaultOnly.Data:_read()
  self.value = self._io:read_bytes(4)
end


