# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NavParent2(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.ofs_tags = self._io.read_u4le()
        self.num_tags = self._io.read_u4le()
        self.tags = []
        for i in range(self.num_tags):
            _t_tags = NavParent2.Tag(self._io, self, self._root)
            try:
                _t_tags._read()
            finally:
                self.tags.append(_t_tags)

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.tags)):
            pass
            self.tags[i]._fetch_instances()



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u4le(self.ofs_tags)
        self._io.write_u4le(self.num_tags)
        for i in range(len(self.tags)):
            pass
            self.tags[i]._write__seq(self._io)



    def _check(self):
        if len(self.tags) != self.num_tags:
            raise kaitaistruct.ConsistencyError("tags", self.num_tags, len(self.tags))
        for i in range(len(self.tags)):
            pass
            if self.tags[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("tags", self._root, self.tags[i]._root)
            if self.tags[i]._parent != self:
                raise kaitaistruct.ConsistencyError("tags", self, self.tags[i]._parent)

        self._dirty = False

    class Tag(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_tag_content = False
            self.tag_content__enabled = True

        def _read(self):
            self.name = (self._io.read_bytes(4)).decode("ASCII")
            self.ofs = self._io.read_u4le()
            self.num_items = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.tag_content
            if hasattr(self, '_m_tag_content'):
                pass
                _on = self.name
                if _on == "RAHC":
                    pass
                    self._m_tag_content._fetch_instances()



        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._should_write_tag_content = self.tag_content__enabled
            self._io.write_bytes((self.name).encode("ASCII"))
            self._io.write_u4le(self.ofs)
            self._io.write_u4le(self.num_items)


        def _check(self):
            if len((self.name).encode("ASCII")) != 4:
                raise kaitaistruct.ConsistencyError("name", 4, len((self.name).encode("ASCII")))
            if self.tag_content__enabled:
                pass
                _on = self.name
                if _on == "RAHC":
                    pass
                    if self._m_tag_content._root != self._root:
                        raise kaitaistruct.ConsistencyError("tag_content", self._root, self._m_tag_content._root)
                    if self._m_tag_content._parent != self:
                        raise kaitaistruct.ConsistencyError("tag_content", self, self._m_tag_content._parent)

            self._dirty = False

        class TagChar(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.content = (self._io.read_bytes(self._parent.num_items)).decode("ASCII")
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super()._write__seq(io)
                self._io.write_bytes((self.content).encode("ASCII"))


            def _check(self):
                if len((self.content).encode("ASCII")) != self._parent.num_items:
                    raise kaitaistruct.ConsistencyError("content", self._parent.num_items, len((self.content).encode("ASCII")))
                self._dirty = False


        @property
        def tag_content(self):
            if self._should_write_tag_content:
                self._write_tag_content()
            if hasattr(self, '_m_tag_content'):
                return self._m_tag_content

            if not self.tag_content__enabled:
                return None

            io = self._root._io
            _pos = io.pos()
            io.seek(self.ofs)
            _on = self.name
            if _on == "RAHC":
                pass
                self._m_tag_content = NavParent2.Tag.TagChar(io, self, self._root)
                self._m_tag_content._read()
            io.seek(_pos)
            return getattr(self, '_m_tag_content', None)

        @tag_content.setter
        def tag_content(self, v):
            self._dirty = True
            self._m_tag_content = v

        def _write_tag_content(self):
            self._should_write_tag_content = False
            io = self._root._io
            _pos = io.pos()
            io.seek(self.ofs)
            _on = self.name
            if _on == "RAHC":
                pass
                self._m_tag_content._write__seq(io)
            io.seek(_pos)



