# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedTypeParam(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(NestedTypeParam, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.main_seq = NestedTypeParam.Nested.MyType(5, self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.main_seq._fetch_instances()

    class Nested(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NestedTypeParam.Nested, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass

        class MyType(KaitaiStruct):
            def __init__(self, my_len, _io, _parent=None, _root=None):
                super(NestedTypeParam.Nested.MyType, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self.my_len = my_len
                self._read()

            def _read(self):
                self.body = (self._io.read_bytes(self.my_len)).decode(u"ASCII")


            def _fetch_instances(self):
                pass




