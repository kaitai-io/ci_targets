# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParent3(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._should_write_tags = False
        self.tags__to_write = True

    def _read(self):
        self.ofs_tags = self._io.read_u4le()
        self.num_tags = self._io.read_u4le()


    def _fetch_instances(self):
        pass
        _ = self.tags
        for i in range(len(self._m_tags)):
            pass
            self._m_tags[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(NavParent3, self)._write__seq(io)
        self._should_write_tags = self.tags__to_write
        self._io.write_u4le(self.ofs_tags)
        self._io.write_u4le(self.num_tags)


    def _check(self):
        pass

    class Tag(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._should_write_tag_content = False
            self.tag_content__to_write = True

        def _read(self):
            self.name = (self._io.read_bytes(4)).decode(u"ASCII")
            self.ofs = self._io.read_u4le()
            self.num_items = self._io.read_u4le()


        def _fetch_instances(self):
            pass
            _ = self.tag_content
            _on = self.name
            if _on == u"RAHC":
                pass
                self._m_tag_content._fetch_instances()


        def _write__seq(self, io=None):
            super(NavParent3.Tag, self)._write__seq(io)
            self._should_write_tag_content = self.tag_content__to_write
            self._io.write_bytes((self.name).encode(u"ASCII"))
            self._io.write_u4le(self.ofs)
            self._io.write_u4le(self.num_items)


        def _check(self):
            pass
            if len((self.name).encode(u"ASCII")) != 4:
                raise kaitaistruct.ConsistencyError(u"name", len((self.name).encode(u"ASCII")), 4)

        class TagChar(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.content = (self._io.read_bytes(self._parent.num_items)).decode(u"ASCII")


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(NavParent3.Tag.TagChar, self)._write__seq(io)
                self._io.write_bytes((self.content).encode(u"ASCII"))


            def _check(self):
                pass
                if len((self.content).encode(u"ASCII")) != self._parent.num_items:
                    raise kaitaistruct.ConsistencyError(u"content", len((self.content).encode(u"ASCII")), self._parent.num_items)


        @property
        def tag_content(self):
            if self._should_write_tag_content:
                self._write_tag_content()
            if hasattr(self, '_m_tag_content'):
                return self._m_tag_content

            io = self._root._io
            _pos = io.pos()
            io.seek(self.ofs)
            _on = self.name
            if _on == u"RAHC":
                pass
                self._m_tag_content = NavParent3.Tag.TagChar(io, self, self._root)
                self._m_tag_content._read()
            io.seek(_pos)
            return getattr(self, '_m_tag_content', None)

        @tag_content.setter
        def tag_content(self, v):
            self._m_tag_content = v

        def _write_tag_content(self):
            self._should_write_tag_content = False
            io = self._root._io
            _pos = io.pos()
            io.seek(self.ofs)
            _on = self.name
            if _on == u"RAHC":
                pass
                self._m_tag_content._write__seq(io)
            io.seek(_pos)


        def _check_tag_content(self):
            pass
            _on = self.name
            if _on == u"RAHC":
                pass
                if self._m_tag_content._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"tag_content", self._m_tag_content._root, self._root)
                if self._m_tag_content._parent != self:
                    raise kaitaistruct.ConsistencyError(u"tag_content", self._m_tag_content._parent, self)


    @property
    def tags(self):
        if self._should_write_tags:
            self._write_tags()
        if hasattr(self, '_m_tags'):
            return self._m_tags

        _pos = self._io.pos()
        self._io.seek(self.ofs_tags)
        self._m_tags = []
        for i in range(self.num_tags):
            _t__m_tags = NavParent3.Tag(self._io, self, self._root)
            try:
                _t__m_tags._read()
            finally:
                self._m_tags.append(_t__m_tags)

        self._io.seek(_pos)
        return getattr(self, '_m_tags', None)

    @tags.setter
    def tags(self, v):
        self._m_tags = v

    def _write_tags(self):
        self._should_write_tags = False
        _pos = self._io.pos()
        self._io.seek(self.ofs_tags)
        for i in range(len(self._m_tags)):
            pass
            self._m_tags[i]._write__seq(self._io)

        self._io.seek(_pos)


    def _check_tags(self):
        pass
        if len(self._m_tags) != self.num_tags:
            raise kaitaistruct.ConsistencyError(u"tags", len(self._m_tags), self.num_tags)
        for i in range(len(self._m_tags)):
            pass
            if self._m_tags[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"tags", self._m_tags[i]._root, self._root)
            if self._m_tags[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"tags", self._m_tags[i]._parent, self)



