# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NavParent3(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.ofs_tags = self._io.read_u4le()
        self.num_tags = self._io.read_u4le()


    def _fetch_instances(self):
        pass
        _ = self.tags
        if hasattr(self, '_m_tags'):
            pass
            for i in range(len(self._m_tags)):
                pass
                self._m_tags[i]._fetch_instances()



    class Tag(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.name = (self._io.read_bytes(4)).decode("ASCII")
            self.ofs = self._io.read_u4le()
            self.num_items = self._io.read_u4le()


        def _fetch_instances(self):
            pass
            _ = self.tag_content
            if hasattr(self, '_m_tag_content'):
                pass
                _on = self.name
                if _on == "RAHC":
                    pass
                    self._m_tag_content._fetch_instances()


        class TagChar(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.content = (self._io.read_bytes(self._parent.num_items)).decode("ASCII")


            def _fetch_instances(self):
                pass


        @property
        def tag_content(self):
            if hasattr(self, '_m_tag_content'):
                return self._m_tag_content

            io = self._root._io
            _pos = io.pos()
            io.seek(self.ofs)
            _on = self.name
            if _on == "RAHC":
                pass
                self._m_tag_content = NavParent3.Tag.TagChar(io, self, self._root)
            io.seek(_pos)
            return getattr(self, '_m_tag_content', None)


    @property
    def tags(self):
        if hasattr(self, '_m_tags'):
            return self._m_tags

        _pos = self._io.pos()
        self._io.seek(self.ofs_tags)
        self._m_tags = []
        for i in range(self.num_tags):
            self._m_tags.append(NavParent3.Tag(self._io, self, self._root))

        self._io.seek(_pos)
        return getattr(self, '_m_tags', None)


