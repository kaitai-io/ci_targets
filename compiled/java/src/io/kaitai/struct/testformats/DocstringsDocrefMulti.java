// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;


/**
 * Sample docstring
 * @see "Plain text description of doc ref, page 42"
 * @see <a href="http://www.example.com/some/path/?even_with=query&amp;more=2">Source</a>
 * @see <a href="http://www.example.com/three">Documentation name</a>
 */
public class DocstringsDocrefMulti extends KaitaiStruct {
    public static DocstringsDocrefMulti fromFile(String fileName) throws IOException {
        return new DocstringsDocrefMulti(new ByteBufferKaitaiStream(fileName));
    }

    public DocstringsDocrefMulti(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DocstringsDocrefMulti(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public DocstringsDocrefMulti(KaitaiStream _io, KaitaiStruct _parent, DocstringsDocrefMulti _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    private DocstringsDocrefMulti _root;
    private KaitaiStruct _parent;
    public DocstringsDocrefMulti _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
