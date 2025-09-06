# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DocstringsDocrefMulti(ReadWriteKaitaiStruct):
    """Sample docstring.
    
    .. seealso::
       Plain text description of doc ref, page 42
    
    
    
    .. seealso::
       Source - http://www.example.com/some/path/?even_with=query&more=2
    
    
    
    .. seealso::
       Documentation name - http://www.example.com/three
    """
    def __init__(self, _io=None, _parent=None, _root=None):
        super(DocstringsDocrefMulti, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(DocstringsDocrefMulti, self)._write__seq(io)


    def _check(self):
        self._dirty = False


