// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsUnalignedB32Le extends KaitaiStruct.ReadWrite {
    public static BitsUnalignedB32Le fromFile(String fileName) throws IOException {
        return new BitsUnalignedB32Le(new ByteBufferKaitaiStream(fileName));
    }
    public BitsUnalignedB32Le() {
        this(null, null, null);
    }

    public BitsUnalignedB32Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsUnalignedB32Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsUnalignedB32Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsUnalignedB32Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readBitsIntLe(1) != 0;
        this.b = this._io.readBitsIntLe(32);
        this.c = this._io.readBitsIntLe(7);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntLe(1, (this.a ? 1 : 0));
        this._io.writeBitsIntLe(32, this.b);
        this._io.writeBitsIntLe(7, this.c);
    }

    public void _check() {
        _dirty = false;
    }
    private boolean a;
    private long b;
    private long c;
    private BitsUnalignedB32Le _root;
    private KaitaiStruct.ReadWrite _parent;
    public boolean a() { return a; }
    public void setA(boolean _v) { _dirty = true; a = _v; }
    public long b() { return b; }
    public void setB(long _v) { _dirty = true; b = _v; }
    public long c() { return c; }
    public void setC(long _v) { _dirty = true; c = _v; }
    public BitsUnalignedB32Le _root() { return _root; }
    public void set_root(BitsUnalignedB32Le _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
