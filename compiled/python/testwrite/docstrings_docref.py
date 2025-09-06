# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DocstringsDocref(ReadWriteKaitaiStruct):
    """Another one-liner.
    
    .. seealso::
       Source - http://www.example.com/some/path/?even_with=query&more=2
    """
    def __init__(self, _io=None, _parent=None, _root=None):
        super(DocstringsDocref, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_parse_inst = False
        self.parse_inst__enabled = True

    def _read(self):
        self.one = self._io.read_u1()
        self.two = self._io.read_u1()
        self.three = self._io.read_u1()
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.parse_inst
        if hasattr(self, '_m_parse_inst'):
            pass



    def _write__seq(self, io=None):
        super(DocstringsDocref, self)._write__seq(io)
        self._should_write_parse_inst = self.parse_inst__enabled
        self._io.write_u1(self.one)
        self._io.write_u1(self.two)
        self._io.write_u1(self.three)


    def _check(self):
        if self.parse_inst__enabled:
            pass

        self._dirty = False

    @property
    def foo(self):
        """
        .. seealso::
           Doc ref for instance, a plain one
        """
        if hasattr(self, '_m_foo'):
            return self._m_foo

        self._m_foo = True
        return getattr(self, '_m_foo', None)

    def _invalidate_foo(self):
        del self._m_foo
    @property
    def parse_inst(self):
        """
        .. seealso::
           Now this is a really
           long document ref that
           spans multiple lines.
        """
        if self._should_write_parse_inst:
            self._write_parse_inst()
        if hasattr(self, '_m_parse_inst'):
            return self._m_parse_inst

        if not self.parse_inst__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_parse_inst = self._io.read_u1()
        self._io.seek(_pos)
        return getattr(self, '_m_parse_inst', None)

    @parse_inst.setter
    def parse_inst(self, v):
        self._dirty = True
        self._m_parse_inst = v

    def _write_parse_inst(self):
        self._should_write_parse_inst = False
        _pos = self._io.pos()
        self._io.seek(0)
        self._io.write_u1(self._m_parse_inst)
        self._io.seek(_pos)


