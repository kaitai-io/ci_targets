// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

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
public class DocstringsDocrefMulti extends KaitaiStruct.ReadWrite {
    public static DocstringsDocrefMulti fromFile(String fileName) throws IOException {
        return new DocstringsDocrefMulti(new ByteBufferKaitaiStream(fileName));
    }
    public DocstringsDocrefMulti() {
        this(null, null, null);
    }

    public DocstringsDocrefMulti(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DocstringsDocrefMulti(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DocstringsDocrefMulti(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DocstringsDocrefMulti _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
    }

    public void _check() {
        _dirty = false;
    }
    private DocstringsDocrefMulti _root;
    private KaitaiStruct.ReadWrite _parent;
    public DocstringsDocrefMulti _root() { return _root; }
    public void set_root(DocstringsDocrefMulti _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
