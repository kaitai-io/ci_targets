-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

NavParentSwitchCast = class.class(KaitaiStruct)

function NavParentSwitchCast:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentSwitchCast:_read()
  self.main = NavParentSwitchCast.Foo(self._io, self, self._root)
end


NavParentSwitchCast.Foo = class.class(KaitaiStruct)

function NavParentSwitchCast.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentSwitchCast.Foo:_read()
  self.buf_type = self._io:read_u1()
  self.flag = self._io:read_u1()
  local _on = self.buf_type
  if _on == 0 then
    self._raw_buf = self._io:read_bytes(4)
    local _io = KaitaiStream(stringstream(self._raw_buf))
    self.buf = NavParentSwitchCast.Foo.Zero(_io, self, self._root)
  elseif _on == 1 then
    self._raw_buf = self._io:read_bytes(4)
    local _io = KaitaiStream(stringstream(self._raw_buf))
    self.buf = NavParentSwitchCast.Foo.One(_io, self, self._root)
  else
    self.buf = self._io:read_bytes(4)
  end
end


NavParentSwitchCast.Foo.Common = class.class(KaitaiStruct)

function NavParentSwitchCast.Foo.Common:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentSwitchCast.Foo.Common:_read()
end

NavParentSwitchCast.Foo.Common.property.flag = {}
function NavParentSwitchCast.Foo.Common.property.flag:get()
  if self._m_flag ~= nil then
    return self._m_flag
  end

  self._m_flag = self._parent._parent.flag
  return self._m_flag
end


NavParentSwitchCast.Foo.One = class.class(KaitaiStruct)

function NavParentSwitchCast.Foo.One:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentSwitchCast.Foo.One:_read()
  self.branch = NavParentSwitchCast.Foo.Common(self._io, self, self._root)
end


NavParentSwitchCast.Foo.Zero = class.class(KaitaiStruct)

function NavParentSwitchCast.Foo.Zero:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParentSwitchCast.Foo.Zero:_read()
  self.branch = NavParentSwitchCast.Foo.Common(self._io, self, self._root)
end


