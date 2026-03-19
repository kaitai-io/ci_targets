# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class SwitchRepeatExpr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.codes = []
        for i in range(3):
            self.codes.append(self._io.read_u1())

        self._raw_body = []
        self.body = []
        for i in range(3):
            _on = self.codes[i]
            if _on == 1:
                pass
                _io_body = self._io.substream(4)
                self.body.append(SwitchRepeatExpr.One(_io_body, self, self._root))
            elif _on == 2:
                pass
                _io_body = self._io.substream(4)
                self.body.append(SwitchRepeatExpr.One(_io_body, self, self._root))
            elif _on == 7:
                pass
                _io_body = self._io.substream(4)
                self.body.append(SwitchRepeatExpr.Two(_io_body, self, self._root))
            else:
                pass
                self.body.append(self._io.read_bytes(4))



    def _fetch_instances(self):
        pass
        for i in range(len(self.codes)):
            pass

        for i in range(len(self.body)):
            pass
            _on = self.codes[i]
            if _on == 1:
                pass
                self.body[i]._fetch_instances()
            elif _on == 2:
                pass
                self.body[i]._fetch_instances()
            elif _on == 7:
                pass
                self.body[i]._fetch_instances()
            else:
                pass


    class One(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.first = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass


    class Two(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.second = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass



