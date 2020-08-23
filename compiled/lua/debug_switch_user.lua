-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DebugSwitchUser = class.class(KaitaiStruct)

function DebugSwitchUser:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function DebugSwitchUser:_read()
  self.code = self._io:read_u1()
  local _on = self.code
  if _on == 1 then
    self.data = DebugSwitchUser.One(self._io, self, self._root)
    self.data:_read()
  elseif _on == 2 then
    self.data = DebugSwitchUser.Two(self._io, self, self._root)
    self.data:_read()
  end
end


DebugSwitchUser.One = class.class(KaitaiStruct)

function DebugSwitchUser.One:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function DebugSwitchUser.One:_read()
  self.val = self._io:read_s2le()
end


DebugSwitchUser.Two = class.class(KaitaiStruct)

function DebugSwitchUser.Two:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function DebugSwitchUser.Two:_read()
  self.val = self._io:read_u2le()
end


