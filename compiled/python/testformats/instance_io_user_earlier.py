# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceIoUserEarlier(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_sized_a = self._io.read_bytes(6)
        _io__raw_sized_a = KaitaiStream(BytesIO(self._raw_sized_a))
        self.sized_a = InstanceIoUserEarlier.Slot(_io__raw_sized_a, self, self._root)
        self._raw_sized_b = self._io.read_bytes(6)
        _io__raw_sized_b = KaitaiStream(BytesIO(self._raw_sized_b))
        self.sized_b = InstanceIoUserEarlier.Slot(_io__raw_sized_b, self, self._root)
        self.into_b = InstanceIoUserEarlier.Foo(self._io, self, self._root)
        self.into_a_skipped = InstanceIoUserEarlier.Foo(self._io, self, self._root)
        self.into_a = InstanceIoUserEarlier.Foo(self._io, self, self._root)
        self.last_accessor = InstanceIoUserEarlier.Baz(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.sized_a._fetch_instances()
        self.sized_b._fetch_instances()
        self.into_b._fetch_instances()
        self.into_a_skipped._fetch_instances()
        self.into_a._fetch_instances()
        self.last_accessor._fetch_instances()
        _ = self.a_mid
        _ = self.b_mid

    class Baz(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            if self._parent.into_b.inst.last == 89:
                pass
                self.v = self._io.read_u1()



        def _fetch_instances(self):
            pass
            if self._parent.into_b.inst.last == 89:
                pass



    class Foo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.indicator = self._io.read_u1()
            if  ((self.inst._io.size() != 0) and (self.inst.content == 102)) :
                pass
                self.bar = self._io.read_u1()



        def _fetch_instances(self):
            pass
            if  ((self.inst._io.size() != 0) and (self.inst.content == 102)) :
                pass

            _ = self.inst
            self._m_inst._fetch_instances()

        @property
        def inst(self):
            if hasattr(self, '_m_inst'):
                return self._m_inst

            io = (self._parent.sized_b._io if self.indicator == 202 else self._parent.sized_a._io)
            _pos = io.pos()
            io.seek(1)
            self._raw__m_inst = io.read_bytes((4 if self._io.pos() != 14 else 0))
            _io__raw__m_inst = KaitaiStream(BytesIO(self._raw__m_inst))
            self._m_inst = InstanceIoUserEarlier.Slot(_io__raw__m_inst, self, self._root)
            io.seek(_pos)
            return getattr(self, '_m_inst', None)


    class Slot(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            if self._io.size() != 0:
                pass
                self.content = self._io.read_u1()



        def _fetch_instances(self):
            pass
            if self._io.size() != 0:
                pass

            if self._io.size() != 0:
                pass
                _ = self.last


        @property
        def last(self):
            if hasattr(self, '_m_last'):
                return self._m_last

            if self._io.size() != 0:
                pass
                _pos = self._io.pos()
                self._io.seek(self._io.size() - 1)
                self._m_last = self._io.read_u1()
                self._io.seek(_pos)

            return getattr(self, '_m_last', None)


    @property
    def a_mid(self):
        if hasattr(self, '_m_a_mid'):
            return self._m_a_mid

        io = self.into_a.inst._io
        _pos = io.pos()
        io.seek(1)
        self._m_a_mid = io.read_u2le()
        io.seek(_pos)
        return getattr(self, '_m_a_mid', None)

    @property
    def b_mid(self):
        if hasattr(self, '_m_b_mid'):
            return self._m_b_mid

        io = self.into_b.inst._io
        _pos = io.pos()
        io.seek(1)
        self._m_b_mid = io.read_u2le()
        io.seek(_pos)
        return getattr(self, '_m_b_mid', None)


