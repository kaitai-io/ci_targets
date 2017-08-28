-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

BcdUserTypeLe = class.class(KaitaiStruct)

function BcdUserTypeLe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BcdUserTypeLe:_read()
  self._raw_ltr = self._io:read_bytes(4)
  local io = KaitaiStream(stringstream(self._raw_ltr))
  self.ltr = BcdUserTypeLe.LtrObj(io, self, self._root)
  self._raw_rtl = self._io:read_bytes(4)
  local io = KaitaiStream(stringstream(self._raw_rtl))
  self.rtl = BcdUserTypeLe.RtlObj(io, self, self._root)
  self._raw_leading_zero_ltr = self._io:read_bytes(4)
  local io = KaitaiStream(stringstream(self._raw_leading_zero_ltr))
  self.leading_zero_ltr = BcdUserTypeLe.LeadingZeroLtrObj(io, self, self._root)
end


BcdUserTypeLe.LtrObj = class.class(KaitaiStruct)

function BcdUserTypeLe.LtrObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BcdUserTypeLe.LtrObj:_read()
  self.b1 = self._io:read_u1()
  self.b2 = self._io:read_u1()
  self.b3 = self._io:read_u1()
  self.b4 = self._io:read_u1()
end

BcdUserTypeLe.LtrObj.property.as_int = {}
function BcdUserTypeLe.LtrObj.property.as_int:get()
  if self._m_as_int ~= nil then
    return self._m_as_int
  end

  self._m_as_int = ((((((((self.digit8 * 1) + (self.digit7 * 10)) + (self.digit6 * 100)) + (self.digit5 * 1000)) + (self.digit4 * 10000)) + (self.digit3 * 100000)) + (self.digit2 * 1000000)) + (self.digit1 * 10000000))
  return self._m_as_int
end

BcdUserTypeLe.LtrObj.property.digit2 = {}
function BcdUserTypeLe.LtrObj.property.digit2:get()
  if self._m_digit2 ~= nil then
    return self._m_digit2
  end

  self._m_digit2 = (self.b4 & 15)
  return self._m_digit2
end

BcdUserTypeLe.LtrObj.property.digit4 = {}
function BcdUserTypeLe.LtrObj.property.digit4:get()
  if self._m_digit4 ~= nil then
    return self._m_digit4
  end

  self._m_digit4 = (self.b3 & 15)
  return self._m_digit4
end

BcdUserTypeLe.LtrObj.property.digit3 = {}
function BcdUserTypeLe.LtrObj.property.digit3:get()
  if self._m_digit3 ~= nil then
    return self._m_digit3
  end

  self._m_digit3 = ((self.b3 & 240) >> 4)
  return self._m_digit3
end

BcdUserTypeLe.LtrObj.property.digit5 = {}
function BcdUserTypeLe.LtrObj.property.digit5:get()
  if self._m_digit5 ~= nil then
    return self._m_digit5
  end

  self._m_digit5 = ((self.b2 & 240) >> 4)
  return self._m_digit5
end

BcdUserTypeLe.LtrObj.property.digit8 = {}
function BcdUserTypeLe.LtrObj.property.digit8:get()
  if self._m_digit8 ~= nil then
    return self._m_digit8
  end

  self._m_digit8 = (self.b1 & 15)
  return self._m_digit8
end

BcdUserTypeLe.LtrObj.property.digit6 = {}
function BcdUserTypeLe.LtrObj.property.digit6:get()
  if self._m_digit6 ~= nil then
    return self._m_digit6
  end

  self._m_digit6 = (self.b2 & 15)
  return self._m_digit6
end

BcdUserTypeLe.LtrObj.property.as_str = {}
function BcdUserTypeLe.LtrObj.property.as_str:get()
  if self._m_as_str ~= nil then
    return self._m_as_str
  end

  self._m_as_str = tostring(self.digit1) .. tostring(self.digit2) .. tostring(self.digit3) .. tostring(self.digit4) .. tostring(self.digit5) .. tostring(self.digit6) .. tostring(self.digit7) .. tostring(self.digit8)
  return self._m_as_str
end

BcdUserTypeLe.LtrObj.property.digit1 = {}
function BcdUserTypeLe.LtrObj.property.digit1:get()
  if self._m_digit1 ~= nil then
    return self._m_digit1
  end

  self._m_digit1 = ((self.b4 & 240) >> 4)
  return self._m_digit1
end

BcdUserTypeLe.LtrObj.property.digit7 = {}
function BcdUserTypeLe.LtrObj.property.digit7:get()
  if self._m_digit7 ~= nil then
    return self._m_digit7
  end

  self._m_digit7 = ((self.b1 & 240) >> 4)
  return self._m_digit7
end


BcdUserTypeLe.RtlObj = class.class(KaitaiStruct)

function BcdUserTypeLe.RtlObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BcdUserTypeLe.RtlObj:_read()
  self.b1 = self._io:read_u1()
  self.b2 = self._io:read_u1()
  self.b3 = self._io:read_u1()
  self.b4 = self._io:read_u1()
end

BcdUserTypeLe.RtlObj.property.as_int = {}
function BcdUserTypeLe.RtlObj.property.as_int:get()
  if self._m_as_int ~= nil then
    return self._m_as_int
  end

  self._m_as_int = ((((((((self.digit1 * 1) + (self.digit2 * 10)) + (self.digit3 * 100)) + (self.digit4 * 1000)) + (self.digit5 * 10000)) + (self.digit6 * 100000)) + (self.digit7 * 1000000)) + (self.digit8 * 10000000))
  return self._m_as_int
end

BcdUserTypeLe.RtlObj.property.digit2 = {}
function BcdUserTypeLe.RtlObj.property.digit2:get()
  if self._m_digit2 ~= nil then
    return self._m_digit2
  end

  self._m_digit2 = (self.b4 & 15)
  return self._m_digit2
end

BcdUserTypeLe.RtlObj.property.digit4 = {}
function BcdUserTypeLe.RtlObj.property.digit4:get()
  if self._m_digit4 ~= nil then
    return self._m_digit4
  end

  self._m_digit4 = (self.b3 & 15)
  return self._m_digit4
end

BcdUserTypeLe.RtlObj.property.digit3 = {}
function BcdUserTypeLe.RtlObj.property.digit3:get()
  if self._m_digit3 ~= nil then
    return self._m_digit3
  end

  self._m_digit3 = ((self.b3 & 240) >> 4)
  return self._m_digit3
end

BcdUserTypeLe.RtlObj.property.digit5 = {}
function BcdUserTypeLe.RtlObj.property.digit5:get()
  if self._m_digit5 ~= nil then
    return self._m_digit5
  end

  self._m_digit5 = ((self.b2 & 240) >> 4)
  return self._m_digit5
end

BcdUserTypeLe.RtlObj.property.digit8 = {}
function BcdUserTypeLe.RtlObj.property.digit8:get()
  if self._m_digit8 ~= nil then
    return self._m_digit8
  end

  self._m_digit8 = (self.b1 & 15)
  return self._m_digit8
end

BcdUserTypeLe.RtlObj.property.digit6 = {}
function BcdUserTypeLe.RtlObj.property.digit6:get()
  if self._m_digit6 ~= nil then
    return self._m_digit6
  end

  self._m_digit6 = (self.b2 & 15)
  return self._m_digit6
end

BcdUserTypeLe.RtlObj.property.as_str = {}
function BcdUserTypeLe.RtlObj.property.as_str:get()
  if self._m_as_str ~= nil then
    return self._m_as_str
  end

  self._m_as_str = tostring(self.digit8) .. tostring(self.digit7) .. tostring(self.digit6) .. tostring(self.digit5) .. tostring(self.digit4) .. tostring(self.digit3) .. tostring(self.digit2) .. tostring(self.digit1)
  return self._m_as_str
end

BcdUserTypeLe.RtlObj.property.digit1 = {}
function BcdUserTypeLe.RtlObj.property.digit1:get()
  if self._m_digit1 ~= nil then
    return self._m_digit1
  end

  self._m_digit1 = ((self.b4 & 240) >> 4)
  return self._m_digit1
end

BcdUserTypeLe.RtlObj.property.digit7 = {}
function BcdUserTypeLe.RtlObj.property.digit7:get()
  if self._m_digit7 ~= nil then
    return self._m_digit7
  end

  self._m_digit7 = ((self.b1 & 240) >> 4)
  return self._m_digit7
end


BcdUserTypeLe.LeadingZeroLtrObj = class.class(KaitaiStruct)

function BcdUserTypeLe.LeadingZeroLtrObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BcdUserTypeLe.LeadingZeroLtrObj:_read()
  self.b1 = self._io:read_u1()
  self.b2 = self._io:read_u1()
  self.b3 = self._io:read_u1()
  self.b4 = self._io:read_u1()
end

BcdUserTypeLe.LeadingZeroLtrObj.property.as_int = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.as_int:get()
  if self._m_as_int ~= nil then
    return self._m_as_int
  end

  self._m_as_int = ((((((((self.digit8 * 1) + (self.digit7 * 10)) + (self.digit6 * 100)) + (self.digit5 * 1000)) + (self.digit4 * 10000)) + (self.digit3 * 100000)) + (self.digit2 * 1000000)) + (self.digit1 * 10000000))
  return self._m_as_int
end

BcdUserTypeLe.LeadingZeroLtrObj.property.digit2 = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.digit2:get()
  if self._m_digit2 ~= nil then
    return self._m_digit2
  end

  self._m_digit2 = (self.b4 & 15)
  return self._m_digit2
end

BcdUserTypeLe.LeadingZeroLtrObj.property.digit4 = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.digit4:get()
  if self._m_digit4 ~= nil then
    return self._m_digit4
  end

  self._m_digit4 = (self.b3 & 15)
  return self._m_digit4
end

BcdUserTypeLe.LeadingZeroLtrObj.property.digit3 = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.digit3:get()
  if self._m_digit3 ~= nil then
    return self._m_digit3
  end

  self._m_digit3 = ((self.b3 & 240) >> 4)
  return self._m_digit3
end

BcdUserTypeLe.LeadingZeroLtrObj.property.digit5 = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.digit5:get()
  if self._m_digit5 ~= nil then
    return self._m_digit5
  end

  self._m_digit5 = ((self.b2 & 240) >> 4)
  return self._m_digit5
end

BcdUserTypeLe.LeadingZeroLtrObj.property.digit8 = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.digit8:get()
  if self._m_digit8 ~= nil then
    return self._m_digit8
  end

  self._m_digit8 = (self.b1 & 15)
  return self._m_digit8
end

BcdUserTypeLe.LeadingZeroLtrObj.property.digit6 = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.digit6:get()
  if self._m_digit6 ~= nil then
    return self._m_digit6
  end

  self._m_digit6 = (self.b2 & 15)
  return self._m_digit6
end

BcdUserTypeLe.LeadingZeroLtrObj.property.as_str = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.as_str:get()
  if self._m_as_str ~= nil then
    return self._m_as_str
  end

  self._m_as_str = tostring(self.digit1) .. tostring(self.digit2) .. tostring(self.digit3) .. tostring(self.digit4) .. tostring(self.digit5) .. tostring(self.digit6) .. tostring(self.digit7) .. tostring(self.digit8)
  return self._m_as_str
end

BcdUserTypeLe.LeadingZeroLtrObj.property.digit1 = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.digit1:get()
  if self._m_digit1 ~= nil then
    return self._m_digit1
  end

  self._m_digit1 = ((self.b4 & 240) >> 4)
  return self._m_digit1
end

BcdUserTypeLe.LeadingZeroLtrObj.property.digit7 = {}
function BcdUserTypeLe.LeadingZeroLtrObj.property.digit7:get()
  if self._m_digit7 ~= nil then
    return self._m_digit7
  end

  self._m_digit7 = ((self.b1 & 240) >> 4)
  return self._m_digit7
end


