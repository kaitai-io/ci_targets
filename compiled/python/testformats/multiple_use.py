# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class MultipleUse(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(MultipleUse, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.t1 = MultipleUse.Type1(self._io, self, self._root)
        self.t2 = MultipleUse.Type2(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.t1._fetch_instances()
        self.t2._fetch_instances()

    class Multi(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(MultipleUse.Multi, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = self._io.read_s4le()


        def _fetch_instances(self):
            pass


    class Type1(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(MultipleUse.Type1, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.first_use = MultipleUse.Multi(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.first_use._fetch_instances()


    class Type2(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(MultipleUse.Type2, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass
            _ = self.second_use
            if hasattr(self, '_m_second_use'):
                pass
                self._m_second_use._fetch_instances()


        @property
        def second_use(self):
            if hasattr(self, '_m_second_use'):
                return self._m_second_use

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_second_use = MultipleUse.Multi(self._io, self, self._root)
            self._io.seek(_pos)
            return getattr(self, '_m_second_use', None)



