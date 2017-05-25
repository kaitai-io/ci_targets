from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class NavParent3(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.ofs_tags = self._io.read_u4le()
        self.num_tags = self._io.read_u4le()

    class Tag(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.name = (self._io.read_bytes(4)).decode(u"ASCII")
            self.ofs = self._io.read_u4le()
            self.num_items = self._io.read_u4le()

        class TagChar(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.content = (self._io.read_bytes(self._parent.num_items)).decode(u"ASCII")


        @property
        def tag_content(self):
            if hasattr(self, '_m_tag_content'):
                return self._m_tag_content if hasattr(self, '_m_tag_content') else None

            io = self._root._io
            _pos = io.pos()
            io.seek(self.ofs)
            _on = self.name
            if _on == u"RAHC":
                self._m_tag_content = self._root.Tag.TagChar(io, self, self._root)
            io.seek(_pos)
            return self._m_tag_content if hasattr(self, '_m_tag_content') else None


    @property
    def tags(self):
        if hasattr(self, '_m_tags'):
            return self._m_tags if hasattr(self, '_m_tags') else None

        _pos = self._io.pos()
        self._io.seek(self.ofs_tags)
        self._m_tags = [None] * (self.num_tags)
        for i in range(self.num_tags):
            self._m_tags[i] = self._root.Tag(self._io, self, self._root)

        self._io.seek(_pos)
        return self._m_tags if hasattr(self, '_m_tags') else None


