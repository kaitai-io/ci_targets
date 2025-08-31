// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class MetaXref extends KaitaiStruct.ReadWrite {
    public static MetaXref fromFile(String fileName) throws IOException {
        return new MetaXref(new ByteBufferKaitaiStream(fileName));
    }
    public MetaXref() {
        this(null, null, null);
    }

    public MetaXref(KaitaiStream _io) {
        this(_io, null, null);
    }

    public MetaXref(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public MetaXref(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, MetaXref _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
    }

    public void _check() {
    }
    private MetaXref _root;
    private KaitaiStruct.ReadWrite _parent;
    public MetaXref _root() { return _root; }
    public void set_root(MetaXref _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
