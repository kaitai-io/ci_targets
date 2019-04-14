# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class BcdUserTypeBe(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_ltr = self._io.read_bytes(4)
        _io__raw_ltr = KaitaiStream(BytesIO(self._raw_ltr))
        self.ltr = self._root.LtrObj(_io__raw_ltr, self, self._root)
        self._raw_rtl = self._io.read_bytes(4)
        _io__raw_rtl = KaitaiStream(BytesIO(self._raw_rtl))
        self.rtl = self._root.RtlObj(_io__raw_rtl, self, self._root)
        self._raw_leading_zero_ltr = self._io.read_bytes(4)
        _io__raw_leading_zero_ltr = KaitaiStream(BytesIO(self._raw_leading_zero_ltr))
        self.leading_zero_ltr = self._root.LeadingZeroLtrObj(_io__raw_leading_zero_ltr, self, self._root)

    class LtrObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.b1 = self._io.read_u1()
            self.b2 = self._io.read_u1()
            self.b3 = self._io.read_u1()
            self.b4 = self._io.read_u1()

        @property
        def as_int(self):
            if hasattr(self, '_m_as_int'):
                return self._m_as_int if hasattr(self, '_m_as_int') else None

            self._m_as_int = ((((((((self.digit8 * 1) + (self.digit7 * 10)) + (self.digit6 * 100)) + (self.digit5 * 1000)) + (self.digit4 * 10000)) + (self.digit3 * 100000)) + (self.digit2 * 1000000)) + (self.digit1 * 10000000))
            return self._m_as_int if hasattr(self, '_m_as_int') else None

        @property
        def digit2(self):
            if hasattr(self, '_m_digit2'):
                return self._m_digit2 if hasattr(self, '_m_digit2') else None

            self._m_digit2 = (self.b1 & 15)
            return self._m_digit2 if hasattr(self, '_m_digit2') else None

        @property
        def digit4(self):
            if hasattr(self, '_m_digit4'):
                return self._m_digit4 if hasattr(self, '_m_digit4') else None

            self._m_digit4 = (self.b2 & 15)
            return self._m_digit4 if hasattr(self, '_m_digit4') else None

        @property
        def digit3(self):
            if hasattr(self, '_m_digit3'):
                return self._m_digit3 if hasattr(self, '_m_digit3') else None

            self._m_digit3 = ((self.b2 & 240) >> 4)
            return self._m_digit3 if hasattr(self, '_m_digit3') else None

        @property
        def digit5(self):
            if hasattr(self, '_m_digit5'):
                return self._m_digit5 if hasattr(self, '_m_digit5') else None

            self._m_digit5 = ((self.b3 & 240) >> 4)
            return self._m_digit5 if hasattr(self, '_m_digit5') else None

        @property
        def digit8(self):
            if hasattr(self, '_m_digit8'):
                return self._m_digit8 if hasattr(self, '_m_digit8') else None

            self._m_digit8 = (self.b4 & 15)
            return self._m_digit8 if hasattr(self, '_m_digit8') else None

        @property
        def digit6(self):
            if hasattr(self, '_m_digit6'):
                return self._m_digit6 if hasattr(self, '_m_digit6') else None

            self._m_digit6 = (self.b3 & 15)
            return self._m_digit6 if hasattr(self, '_m_digit6') else None

        @property
        def as_str(self):
            if hasattr(self, '_m_as_str'):
                return self._m_as_str if hasattr(self, '_m_as_str') else None

            self._m_as_str = str(self.digit1) + str(self.digit2) + str(self.digit3) + str(self.digit4) + str(self.digit5) + str(self.digit6) + str(self.digit7) + str(self.digit8)
            return self._m_as_str if hasattr(self, '_m_as_str') else None

        @property
        def digit1(self):
            if hasattr(self, '_m_digit1'):
                return self._m_digit1 if hasattr(self, '_m_digit1') else None

            self._m_digit1 = ((self.b1 & 240) >> 4)
            return self._m_digit1 if hasattr(self, '_m_digit1') else None

        @property
        def digit7(self):
            if hasattr(self, '_m_digit7'):
                return self._m_digit7 if hasattr(self, '_m_digit7') else None

            self._m_digit7 = ((self.b4 & 240) >> 4)
            return self._m_digit7 if hasattr(self, '_m_digit7') else None


    class RtlObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.b1 = self._io.read_u1()
            self.b2 = self._io.read_u1()
            self.b3 = self._io.read_u1()
            self.b4 = self._io.read_u1()

        @property
        def as_int(self):
            if hasattr(self, '_m_as_int'):
                return self._m_as_int if hasattr(self, '_m_as_int') else None

            self._m_as_int = ((((((((self.digit1 * 1) + (self.digit2 * 10)) + (self.digit3 * 100)) + (self.digit4 * 1000)) + (self.digit5 * 10000)) + (self.digit6 * 100000)) + (self.digit7 * 1000000)) + (self.digit8 * 10000000))
            return self._m_as_int if hasattr(self, '_m_as_int') else None

        @property
        def digit2(self):
            if hasattr(self, '_m_digit2'):
                return self._m_digit2 if hasattr(self, '_m_digit2') else None

            self._m_digit2 = (self.b1 & 15)
            return self._m_digit2 if hasattr(self, '_m_digit2') else None

        @property
        def digit4(self):
            if hasattr(self, '_m_digit4'):
                return self._m_digit4 if hasattr(self, '_m_digit4') else None

            self._m_digit4 = (self.b2 & 15)
            return self._m_digit4 if hasattr(self, '_m_digit4') else None

        @property
        def digit3(self):
            if hasattr(self, '_m_digit3'):
                return self._m_digit3 if hasattr(self, '_m_digit3') else None

            self._m_digit3 = ((self.b2 & 240) >> 4)
            return self._m_digit3 if hasattr(self, '_m_digit3') else None

        @property
        def digit5(self):
            if hasattr(self, '_m_digit5'):
                return self._m_digit5 if hasattr(self, '_m_digit5') else None

            self._m_digit5 = ((self.b3 & 240) >> 4)
            return self._m_digit5 if hasattr(self, '_m_digit5') else None

        @property
        def digit8(self):
            if hasattr(self, '_m_digit8'):
                return self._m_digit8 if hasattr(self, '_m_digit8') else None

            self._m_digit8 = (self.b4 & 15)
            return self._m_digit8 if hasattr(self, '_m_digit8') else None

        @property
        def digit6(self):
            if hasattr(self, '_m_digit6'):
                return self._m_digit6 if hasattr(self, '_m_digit6') else None

            self._m_digit6 = (self.b3 & 15)
            return self._m_digit6 if hasattr(self, '_m_digit6') else None

        @property
        def as_str(self):
            if hasattr(self, '_m_as_str'):
                return self._m_as_str if hasattr(self, '_m_as_str') else None

            self._m_as_str = str(self.digit8) + str(self.digit7) + str(self.digit6) + str(self.digit5) + str(self.digit4) + str(self.digit3) + str(self.digit2) + str(self.digit1)
            return self._m_as_str if hasattr(self, '_m_as_str') else None

        @property
        def digit1(self):
            if hasattr(self, '_m_digit1'):
                return self._m_digit1 if hasattr(self, '_m_digit1') else None

            self._m_digit1 = ((self.b1 & 240) >> 4)
            return self._m_digit1 if hasattr(self, '_m_digit1') else None

        @property
        def digit7(self):
            if hasattr(self, '_m_digit7'):
                return self._m_digit7 if hasattr(self, '_m_digit7') else None

            self._m_digit7 = ((self.b4 & 240) >> 4)
            return self._m_digit7 if hasattr(self, '_m_digit7') else None


    class LeadingZeroLtrObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.b1 = self._io.read_u1()
            self.b2 = self._io.read_u1()
            self.b3 = self._io.read_u1()
            self.b4 = self._io.read_u1()

        @property
        def as_int(self):
            if hasattr(self, '_m_as_int'):
                return self._m_as_int if hasattr(self, '_m_as_int') else None

            self._m_as_int = ((((((((self.digit8 * 1) + (self.digit7 * 10)) + (self.digit6 * 100)) + (self.digit5 * 1000)) + (self.digit4 * 10000)) + (self.digit3 * 100000)) + (self.digit2 * 1000000)) + (self.digit1 * 10000000))
            return self._m_as_int if hasattr(self, '_m_as_int') else None

        @property
        def digit2(self):
            if hasattr(self, '_m_digit2'):
                return self._m_digit2 if hasattr(self, '_m_digit2') else None

            self._m_digit2 = (self.b1 & 15)
            return self._m_digit2 if hasattr(self, '_m_digit2') else None

        @property
        def digit4(self):
            if hasattr(self, '_m_digit4'):
                return self._m_digit4 if hasattr(self, '_m_digit4') else None

            self._m_digit4 = (self.b2 & 15)
            return self._m_digit4 if hasattr(self, '_m_digit4') else None

        @property
        def digit3(self):
            if hasattr(self, '_m_digit3'):
                return self._m_digit3 if hasattr(self, '_m_digit3') else None

            self._m_digit3 = ((self.b2 & 240) >> 4)
            return self._m_digit3 if hasattr(self, '_m_digit3') else None

        @property
        def digit5(self):
            if hasattr(self, '_m_digit5'):
                return self._m_digit5 if hasattr(self, '_m_digit5') else None

            self._m_digit5 = ((self.b3 & 240) >> 4)
            return self._m_digit5 if hasattr(self, '_m_digit5') else None

        @property
        def digit8(self):
            if hasattr(self, '_m_digit8'):
                return self._m_digit8 if hasattr(self, '_m_digit8') else None

            self._m_digit8 = (self.b4 & 15)
            return self._m_digit8 if hasattr(self, '_m_digit8') else None

        @property
        def digit6(self):
            if hasattr(self, '_m_digit6'):
                return self._m_digit6 if hasattr(self, '_m_digit6') else None

            self._m_digit6 = (self.b3 & 15)
            return self._m_digit6 if hasattr(self, '_m_digit6') else None

        @property
        def as_str(self):
            if hasattr(self, '_m_as_str'):
                return self._m_as_str if hasattr(self, '_m_as_str') else None

            self._m_as_str = str(self.digit1) + str(self.digit2) + str(self.digit3) + str(self.digit4) + str(self.digit5) + str(self.digit6) + str(self.digit7) + str(self.digit8)
            return self._m_as_str if hasattr(self, '_m_as_str') else None

        @property
        def digit1(self):
            if hasattr(self, '_m_digit1'):
                return self._m_digit1 if hasattr(self, '_m_digit1') else None

            self._m_digit1 = ((self.b1 & 240) >> 4)
            return self._m_digit1 if hasattr(self, '_m_digit1') else None

        @property
        def digit7(self):
            if hasattr(self, '_m_digit7'):
                return self._m_digit7 if hasattr(self, '_m_digit7') else None

            self._m_digit7 = ((self.b4 & 240) >> 4)
            return self._m_digit7 if hasattr(self, '_m_digit7') else None



