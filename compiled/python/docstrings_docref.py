# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class DocstringsDocref(KaitaiStruct):
    """Another one-liner.
    
    .. seealso::
       Source - http://www.example.com/some/path/?even_with=query&more=2
    """
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._io.read_u1()
        self.two = self._io.read_u1()
        self.three = self._io.read_u1()

    @property
    def foo(self):
        """
        .. seealso::
           Doc ref for instance, a plain one
        """
        if hasattr(self, '_m_foo'):
            return self._m_foo if hasattr(self, '_m_foo') else None

        self._m_foo = True
        return self._m_foo if hasattr(self, '_m_foo') else None

    @property
    def parse_inst(self):
        """
        .. seealso::
           Now this is a really
           long document ref that
           spans multiple lines.
        """
        if hasattr(self, '_m_parse_inst'):
            return self._m_parse_inst if hasattr(self, '_m_parse_inst') else None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_parse_inst = self._io.read_u1()
        self._io.seek(_pos)
        return self._m_parse_inst if hasattr(self, '_m_parse_inst') else None


