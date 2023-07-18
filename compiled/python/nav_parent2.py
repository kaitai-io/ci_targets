# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParent2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.ofs_tags = self._io.read_u4le()
        self.num_tags = self._io.read_u4le()
        self.tags = []
        for i in range(self.num_tags):
            self.tags.append(NavParent2.Tag(self._io, self, self._root))


    class Tag(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.name = (self._io.read_bytes(4)).decode("ASCII")
            self.ofs = self._io.read_u4le()
            self.num_items = self._io.read_u4le()

        class TagChar(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.content = (self._io.read_bytes(self._parent.num_items)).decode("ASCII")


        @property
        def tag_content(self):
            if hasattr(self, '_m_tag_content'):
                return self._m_tag_content

            io = self._root._io
            _pos = io.pos()
            io.seek(self.ofs)
            _on = self.name
            if _on == u"RAHC":
                self._m_tag_content = NavParent2.Tag.TagChar(io, self, self._root)
            io.seek(_pos)
            return getattr(self, '_m_tag_content', None)



