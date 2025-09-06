// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSignedShiftB64Le extends KaitaiStruct.ReadWrite {
    public static BitsSignedShiftB64Le fromFile(String fileName) throws IOException {
        return new BitsSignedShiftB64Le(new ByteBufferKaitaiStream(fileName));
    }
    public BitsSignedShiftB64Le() {
        this(null, null, null);
    }

    public BitsSignedShiftB64Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsSignedShiftB64Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsSignedShiftB64Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsSignedShiftB64Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readBitsIntLe(63);
        this.b = this._io.readBitsIntLe(9);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntLe(63, this.a);
        this._io.writeBitsIntLe(9, this.b);
    }

    public void _check() {
        _dirty = false;
    }
    private long a;
    private long b;
    private BitsSignedShiftB64Le _root;
    private KaitaiStruct.ReadWrite _parent;
    public long a() { return a; }
    public void setA(long _v) { _dirty = true; a = _v; }
    public long b() { return b; }
    public void setB(long _v) { _dirty = true; b = _v; }
    public BitsSignedShiftB64Le _root() { return _root; }
    public void set_root(BitsSignedShiftB64Le _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
