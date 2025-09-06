# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DefaultEndianExprException(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(DefaultEndianExprException, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.docs = []
        i = 0
        while not self._io.is_eof():
            self.docs.append(DefaultEndianExprException.Doc(self._io, self, self._root))
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.docs)):
            pass
            self.docs[i]._fetch_instances()


    class Doc(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(DefaultEndianExprException.Doc, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.indicator = self._io.read_bytes(2)
            self.main = DefaultEndianExprException.Doc.MainObj(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.main._fetch_instances()

        class MainObj(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(DefaultEndianExprException.Doc.MainObj, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                _on = self._parent.indicator
                if _on == b"\x49\x49":
                    pass
                    self._is_le = True
                elif _on == b"\x4D\x4D":
                    pass
                    self._is_le = False
                if not hasattr(self, '_is_le'):
                    raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj")
                elif self._is_le == True:
                    self._read_le()
                elif self._is_le == False:
                    self._read_be()

            def _read_le(self):
                self.some_int = self._io.read_u4le()
                self.some_int_be = self._io.read_u2be()
                self.some_int_le = self._io.read_u2le()

            def _read_be(self):
                self.some_int = self._io.read_u4be()
                self.some_int_be = self._io.read_u2be()
                self.some_int_le = self._io.read_u2le()


            def _fetch_instances(self):
                pass




