-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local utils = require("utils")

SwitchMultiBoolOps = class.class(KaitaiStruct)

function SwitchMultiBoolOps:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchMultiBoolOps:_read()
  self.opcodes = {}
  local i = 0
  while not self._io:is_eof() do
    self.opcodes[i + 1] = SwitchMultiBoolOps.Opcode(self._io, self, self._root)
    i = i + 1
  end
end


SwitchMultiBoolOps.Opcode = class.class(KaitaiStruct)

function SwitchMultiBoolOps.Opcode:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchMultiBoolOps.Opcode:_read()
  self.code = self._io:read_u1()
  local _on = utils.box_unwrap(( ((self.code > 0) and (self.code <= 8) and (utils.box_unwrap((self.code ~= 10) and utils.box_wrap(true) or (false)))) ) and utils.box_wrap(self.code) or (0))
  if _on == 1 then
    self.body = self._io:read_u1()
  elseif _on == 2 then
    self.body = self._io:read_u2le()
  elseif _on == 4 then
    self.body = self._io:read_u4le()
  elseif _on == 8 then
    self.body = self._io:read_u8le()
  end
end


