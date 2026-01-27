# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class SwitchManualIntSizeEos(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.chunks = []
        i = 0
        while not self._io.is_eof():
            self.chunks.append(SwitchManualIntSizeEos.Chunk(self._io, self, self._root))
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.chunks)):
            pass
            self.chunks[i]._fetch_instances()


    class Chunk(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.code = self._io.read_u1()
            self.size = self._io.read_u4le()
            self._raw_body = self._io.read_bytes(self.size)
            _io__raw_body = KaitaiStream(BytesIO(self._raw_body))
            self.body = SwitchManualIntSizeEos.ChunkBody(_io__raw_body, self, self._root)


        def _fetch_instances(self):
            pass
            self.body._fetch_instances()


    class ChunkBody(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            _on = self._parent.code
            if _on == 17:
                pass
                self._raw_body = self._io.read_bytes_full()
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body))
                self.body = SwitchManualIntSizeEos.ChunkBody.ChunkMeta(_io__raw_body, self, self._root)
            elif _on == 34:
                pass
                self._raw_body = self._io.read_bytes_full()
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body))
                self.body = SwitchManualIntSizeEos.ChunkBody.ChunkDir(_io__raw_body, self, self._root)
            else:
                pass
                self.body = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass
            _on = self._parent.code
            if _on == 17:
                pass
                self.body._fetch_instances()
            elif _on == 34:
                pass
                self.body._fetch_instances()
            else:
                pass

        class ChunkDir(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.entries = []
                i = 0
                while not self._io.is_eof():
                    self.entries.append((self._io.read_bytes(4)).decode("UTF-8"))
                    i += 1



            def _fetch_instances(self):
                pass
                for i in range(len(self.entries)):
                    pass



        class ChunkMeta(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.title = (self._io.read_bytes_term(0, False, True, True)).decode("UTF-8")
                self.author = (self._io.read_bytes_term(0, False, True, True)).decode("UTF-8")


            def _fetch_instances(self):
                pass




