// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class MetaTags extends KaitaiStruct.ReadWrite {
    public static MetaTags fromFile(String fileName) throws IOException {
        return new MetaTags(new ByteBufferKaitaiStream(fileName));
    }
    public MetaTags() {
        this(null, null, null);
    }

    public MetaTags(KaitaiStream _io) {
        this(_io, null, null);
    }

    public MetaTags(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public MetaTags(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, MetaTags _root) {
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
    private MetaTags _root;
    private KaitaiStruct.ReadWrite _parent;
    public MetaTags _root() { return _root; }
    public void set_root(MetaTags _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
