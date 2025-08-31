# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DocstringsDocrefMulti(KaitaiStruct):
    """Sample docstring.
    
    .. seealso::
       Plain text description of doc ref, page 42
    
    
    
    .. seealso::
       Source - http://www.example.com/some/path/?even_with=query&more=2
    
    
    
    .. seealso::
       Documentation name - http://www.example.com/three
    """
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        pass


    def _fetch_instances(self):
        pass


