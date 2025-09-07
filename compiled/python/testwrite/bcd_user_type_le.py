# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BcdUserTypeLe(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(BcdUserTypeLe, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_ltr = self._io.read_bytes(4)
        _io__raw_ltr = KaitaiStream(BytesIO(self._raw_ltr))
        self.ltr = BcdUserTypeLe.LtrObj(_io__raw_ltr, self, self._root)
        self.ltr._read()
        self._raw_rtl = self._io.read_bytes(4)
        _io__raw_rtl = KaitaiStream(BytesIO(self._raw_rtl))
        self.rtl = BcdUserTypeLe.RtlObj(_io__raw_rtl, self, self._root)
        self.rtl._read()
        self._raw_leading_zero_ltr = self._io.read_bytes(4)
        _io__raw_leading_zero_ltr = KaitaiStream(BytesIO(self._raw_leading_zero_ltr))
        self.leading_zero_ltr = BcdUserTypeLe.LeadingZeroLtrObj(_io__raw_leading_zero_ltr, self, self._root)
        self.leading_zero_ltr._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.ltr._fetch_instances()
        self.rtl._fetch_instances()
        self.leading_zero_ltr._fetch_instances()


    def _write__seq(self, io=None):
        super(BcdUserTypeLe, self)._write__seq(io)
        _io__raw_ltr = KaitaiStream(BytesIO(bytearray(4)))
        self._io.add_child_stream(_io__raw_ltr)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (4))
        def handler(parent, _io__raw_ltr=_io__raw_ltr):
            self._raw_ltr = _io__raw_ltr.to_byte_array()
            if len(self._raw_ltr) != 4:
                raise kaitaistruct.ConsistencyError(u"raw(ltr)", 4, len(self._raw_ltr))
            parent.write_bytes(self._raw_ltr)
        _io__raw_ltr.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.ltr._write__seq(_io__raw_ltr)
        _io__raw_rtl = KaitaiStream(BytesIO(bytearray(4)))
        self._io.add_child_stream(_io__raw_rtl)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (4))
        def handler(parent, _io__raw_rtl=_io__raw_rtl):
            self._raw_rtl = _io__raw_rtl.to_byte_array()
            if len(self._raw_rtl) != 4:
                raise kaitaistruct.ConsistencyError(u"raw(rtl)", 4, len(self._raw_rtl))
            parent.write_bytes(self._raw_rtl)
        _io__raw_rtl.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.rtl._write__seq(_io__raw_rtl)
        _io__raw_leading_zero_ltr = KaitaiStream(BytesIO(bytearray(4)))
        self._io.add_child_stream(_io__raw_leading_zero_ltr)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (4))
        def handler(parent, _io__raw_leading_zero_ltr=_io__raw_leading_zero_ltr):
            self._raw_leading_zero_ltr = _io__raw_leading_zero_ltr.to_byte_array()
            if len(self._raw_leading_zero_ltr) != 4:
                raise kaitaistruct.ConsistencyError(u"raw(leading_zero_ltr)", 4, len(self._raw_leading_zero_ltr))
            parent.write_bytes(self._raw_leading_zero_ltr)
        _io__raw_leading_zero_ltr.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.leading_zero_ltr._write__seq(_io__raw_leading_zero_ltr)


    def _check(self):
        if self.ltr._root != self._root:
            raise kaitaistruct.ConsistencyError(u"ltr", self._root, self.ltr._root)
        if self.ltr._parent != self:
            raise kaitaistruct.ConsistencyError(u"ltr", self, self.ltr._parent)
        if self.rtl._root != self._root:
            raise kaitaistruct.ConsistencyError(u"rtl", self._root, self.rtl._root)
        if self.rtl._parent != self:
            raise kaitaistruct.ConsistencyError(u"rtl", self, self.rtl._parent)
        if self.leading_zero_ltr._root != self._root:
            raise kaitaistruct.ConsistencyError(u"leading_zero_ltr", self._root, self.leading_zero_ltr._root)
        if self.leading_zero_ltr._parent != self:
            raise kaitaistruct.ConsistencyError(u"leading_zero_ltr", self, self.leading_zero_ltr._parent)
        self._dirty = False

    class LeadingZeroLtrObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(BcdUserTypeLe.LeadingZeroLtrObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.b1 = self._io.read_u1()
            self.b2 = self._io.read_u1()
            self.b3 = self._io.read_u1()
            self.b4 = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(BcdUserTypeLe.LeadingZeroLtrObj, self)._write__seq(io)
            self._io.write_u1(self.b1)
            self._io.write_u1(self.b2)
            self._io.write_u1(self.b3)
            self._io.write_u1(self.b4)


        def _check(self):
            self._dirty = False

        @property
        def as_int(self):
            if hasattr(self, '_m_as_int'):
                return self._m_as_int

            self._m_as_int = ((((((self.digit8 * 1 + self.digit7 * 10) + self.digit6 * 100) + self.digit5 * 1000) + self.digit4 * 10000) + self.digit3 * 100000) + self.digit2 * 1000000) + self.digit1 * 10000000
            return getattr(self, '_m_as_int', None)

        def _invalidate_as_int(self):
            del self._m_as_int
        @property
        def as_str(self):
            if hasattr(self, '_m_as_str'):
                return self._m_as_str

            self._m_as_str = ((((((str(self.digit1) + str(self.digit2)) + str(self.digit3)) + str(self.digit4)) + str(self.digit5)) + str(self.digit6)) + str(self.digit7)) + str(self.digit8)
            return getattr(self, '_m_as_str', None)

        def _invalidate_as_str(self):
            del self._m_as_str
        @property
        def digit1(self):
            if hasattr(self, '_m_digit1'):
                return self._m_digit1

            self._m_digit1 = (self.b4 & 240) >> 4
            return getattr(self, '_m_digit1', None)

        def _invalidate_digit1(self):
            del self._m_digit1
        @property
        def digit2(self):
            if hasattr(self, '_m_digit2'):
                return self._m_digit2

            self._m_digit2 = self.b4 & 15
            return getattr(self, '_m_digit2', None)

        def _invalidate_digit2(self):
            del self._m_digit2
        @property
        def digit3(self):
            if hasattr(self, '_m_digit3'):
                return self._m_digit3

            self._m_digit3 = (self.b3 & 240) >> 4
            return getattr(self, '_m_digit3', None)

        def _invalidate_digit3(self):
            del self._m_digit3
        @property
        def digit4(self):
            if hasattr(self, '_m_digit4'):
                return self._m_digit4

            self._m_digit4 = self.b3 & 15
            return getattr(self, '_m_digit4', None)

        def _invalidate_digit4(self):
            del self._m_digit4
        @property
        def digit5(self):
            if hasattr(self, '_m_digit5'):
                return self._m_digit5

            self._m_digit5 = (self.b2 & 240) >> 4
            return getattr(self, '_m_digit5', None)

        def _invalidate_digit5(self):
            del self._m_digit5
        @property
        def digit6(self):
            if hasattr(self, '_m_digit6'):
                return self._m_digit6

            self._m_digit6 = self.b2 & 15
            return getattr(self, '_m_digit6', None)

        def _invalidate_digit6(self):
            del self._m_digit6
        @property
        def digit7(self):
            if hasattr(self, '_m_digit7'):
                return self._m_digit7

            self._m_digit7 = (self.b1 & 240) >> 4
            return getattr(self, '_m_digit7', None)

        def _invalidate_digit7(self):
            del self._m_digit7
        @property
        def digit8(self):
            if hasattr(self, '_m_digit8'):
                return self._m_digit8

            self._m_digit8 = self.b1 & 15
            return getattr(self, '_m_digit8', None)

        def _invalidate_digit8(self):
            del self._m_digit8

    class LtrObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(BcdUserTypeLe.LtrObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.b1 = self._io.read_u1()
            self.b2 = self._io.read_u1()
            self.b3 = self._io.read_u1()
            self.b4 = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(BcdUserTypeLe.LtrObj, self)._write__seq(io)
            self._io.write_u1(self.b1)
            self._io.write_u1(self.b2)
            self._io.write_u1(self.b3)
            self._io.write_u1(self.b4)


        def _check(self):
            self._dirty = False

        @property
        def as_int(self):
            if hasattr(self, '_m_as_int'):
                return self._m_as_int

            self._m_as_int = ((((((self.digit8 * 1 + self.digit7 * 10) + self.digit6 * 100) + self.digit5 * 1000) + self.digit4 * 10000) + self.digit3 * 100000) + self.digit2 * 1000000) + self.digit1 * 10000000
            return getattr(self, '_m_as_int', None)

        def _invalidate_as_int(self):
            del self._m_as_int
        @property
        def as_str(self):
            if hasattr(self, '_m_as_str'):
                return self._m_as_str

            self._m_as_str = ((((((str(self.digit1) + str(self.digit2)) + str(self.digit3)) + str(self.digit4)) + str(self.digit5)) + str(self.digit6)) + str(self.digit7)) + str(self.digit8)
            return getattr(self, '_m_as_str', None)

        def _invalidate_as_str(self):
            del self._m_as_str
        @property
        def digit1(self):
            if hasattr(self, '_m_digit1'):
                return self._m_digit1

            self._m_digit1 = (self.b4 & 240) >> 4
            return getattr(self, '_m_digit1', None)

        def _invalidate_digit1(self):
            del self._m_digit1
        @property
        def digit2(self):
            if hasattr(self, '_m_digit2'):
                return self._m_digit2

            self._m_digit2 = self.b4 & 15
            return getattr(self, '_m_digit2', None)

        def _invalidate_digit2(self):
            del self._m_digit2
        @property
        def digit3(self):
            if hasattr(self, '_m_digit3'):
                return self._m_digit3

            self._m_digit3 = (self.b3 & 240) >> 4
            return getattr(self, '_m_digit3', None)

        def _invalidate_digit3(self):
            del self._m_digit3
        @property
        def digit4(self):
            if hasattr(self, '_m_digit4'):
                return self._m_digit4

            self._m_digit4 = self.b3 & 15
            return getattr(self, '_m_digit4', None)

        def _invalidate_digit4(self):
            del self._m_digit4
        @property
        def digit5(self):
            if hasattr(self, '_m_digit5'):
                return self._m_digit5

            self._m_digit5 = (self.b2 & 240) >> 4
            return getattr(self, '_m_digit5', None)

        def _invalidate_digit5(self):
            del self._m_digit5
        @property
        def digit6(self):
            if hasattr(self, '_m_digit6'):
                return self._m_digit6

            self._m_digit6 = self.b2 & 15
            return getattr(self, '_m_digit6', None)

        def _invalidate_digit6(self):
            del self._m_digit6
        @property
        def digit7(self):
            if hasattr(self, '_m_digit7'):
                return self._m_digit7

            self._m_digit7 = (self.b1 & 240) >> 4
            return getattr(self, '_m_digit7', None)

        def _invalidate_digit7(self):
            del self._m_digit7
        @property
        def digit8(self):
            if hasattr(self, '_m_digit8'):
                return self._m_digit8

            self._m_digit8 = self.b1 & 15
            return getattr(self, '_m_digit8', None)

        def _invalidate_digit8(self):
            del self._m_digit8

    class RtlObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(BcdUserTypeLe.RtlObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.b1 = self._io.read_u1()
            self.b2 = self._io.read_u1()
            self.b3 = self._io.read_u1()
            self.b4 = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(BcdUserTypeLe.RtlObj, self)._write__seq(io)
            self._io.write_u1(self.b1)
            self._io.write_u1(self.b2)
            self._io.write_u1(self.b3)
            self._io.write_u1(self.b4)


        def _check(self):
            self._dirty = False

        @property
        def as_int(self):
            if hasattr(self, '_m_as_int'):
                return self._m_as_int

            self._m_as_int = ((((((self.digit1 * 1 + self.digit2 * 10) + self.digit3 * 100) + self.digit4 * 1000) + self.digit5 * 10000) + self.digit6 * 100000) + self.digit7 * 1000000) + self.digit8 * 10000000
            return getattr(self, '_m_as_int', None)

        def _invalidate_as_int(self):
            del self._m_as_int
        @property
        def as_str(self):
            if hasattr(self, '_m_as_str'):
                return self._m_as_str

            self._m_as_str = ((((((str(self.digit8) + str(self.digit7)) + str(self.digit6)) + str(self.digit5)) + str(self.digit4)) + str(self.digit3)) + str(self.digit2)) + str(self.digit1)
            return getattr(self, '_m_as_str', None)

        def _invalidate_as_str(self):
            del self._m_as_str
        @property
        def digit1(self):
            if hasattr(self, '_m_digit1'):
                return self._m_digit1

            self._m_digit1 = (self.b4 & 240) >> 4
            return getattr(self, '_m_digit1', None)

        def _invalidate_digit1(self):
            del self._m_digit1
        @property
        def digit2(self):
            if hasattr(self, '_m_digit2'):
                return self._m_digit2

            self._m_digit2 = self.b4 & 15
            return getattr(self, '_m_digit2', None)

        def _invalidate_digit2(self):
            del self._m_digit2
        @property
        def digit3(self):
            if hasattr(self, '_m_digit3'):
                return self._m_digit3

            self._m_digit3 = (self.b3 & 240) >> 4
            return getattr(self, '_m_digit3', None)

        def _invalidate_digit3(self):
            del self._m_digit3
        @property
        def digit4(self):
            if hasattr(self, '_m_digit4'):
                return self._m_digit4

            self._m_digit4 = self.b3 & 15
            return getattr(self, '_m_digit4', None)

        def _invalidate_digit4(self):
            del self._m_digit4
        @property
        def digit5(self):
            if hasattr(self, '_m_digit5'):
                return self._m_digit5

            self._m_digit5 = (self.b2 & 240) >> 4
            return getattr(self, '_m_digit5', None)

        def _invalidate_digit5(self):
            del self._m_digit5
        @property
        def digit6(self):
            if hasattr(self, '_m_digit6'):
                return self._m_digit6

            self._m_digit6 = self.b2 & 15
            return getattr(self, '_m_digit6', None)

        def _invalidate_digit6(self):
            del self._m_digit6
        @property
        def digit7(self):
            if hasattr(self, '_m_digit7'):
                return self._m_digit7

            self._m_digit7 = (self.b1 & 240) >> 4
            return getattr(self, '_m_digit7', None)

        def _invalidate_digit7(self):
            del self._m_digit7
        @property
        def digit8(self):
            if hasattr(self, '_m_digit8'):
                return self._m_digit8

            self._m_digit8 = self.b1 & 15
            return getattr(self, '_m_digit8', None)

        def _invalidate_digit8(self):
            del self._m_digit8


