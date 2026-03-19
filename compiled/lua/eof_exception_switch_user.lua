-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

EofExceptionSwitchUser = class.class(KaitaiStruct)

function EofExceptionSwitchUser:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EofExceptionSwitchUser:_read()
  self.code = self._io:read_u2le()
  local _on = self.code
  if _on == 2 then
    self.data = EofExceptionSwitchUser.Two(self._io, self, self._root)
  elseif _on == 511 then
    self.data = EofExceptionSwitchUser.One(self._io, self, self._root)
  end
end


EofExceptionSwitchUser.One = class.class(KaitaiStruct)

function EofExceptionSwitchUser.One:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function EofExceptionSwitchUser.One:_read()
  self.val = self._io:read_s2le()
end


EofExceptionSwitchUser.Two = class.class(KaitaiStruct)

function EofExceptionSwitchUser.Two:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function EofExceptionSwitchUser.Two:_read()
  self.val = self._io:read_u2le()
end


