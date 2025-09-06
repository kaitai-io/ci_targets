// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSignedResB32Le extends KaitaiStruct.ReadWrite {
    public static BitsSignedResB32Le fromFile(String fileName) throws IOException {
        return new BitsSignedResB32Le(new ByteBufferKaitaiStream(fileName));
    }
    public BitsSignedResB32Le() {
        this(null, null, null);
    }

    public BitsSignedResB32Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsSignedResB32Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsSignedResB32Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsSignedResB32Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readBitsIntLe(32);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntLe(32, this.a);
    }

    public void _check() {
        _dirty = false;
    }
    private long a;
    private BitsSignedResB32Le _root;
    private KaitaiStruct.ReadWrite _parent;
    public long a() { return a; }
    public void setA(long _v) { _dirty = true; a = _v; }
    public BitsSignedResB32Le _root() { return _root; }
    public void set_root(BitsSignedResB32Le _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
