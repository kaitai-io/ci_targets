// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsShiftByB32Le extends KaitaiStruct.ReadWrite {
    public static BitsShiftByB32Le fromFile(String fileName) throws IOException {
        return new BitsShiftByB32Le(new ByteBufferKaitaiStream(fileName));
    }
    public BitsShiftByB32Le() {
        this(null, null, null);
    }

    public BitsShiftByB32Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsShiftByB32Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsShiftByB32Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsShiftByB32Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readBitsIntLe(32);
        this.b = this._io.readBitsIntLe(8);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBitsIntLe(32, this.a);
        this._io.writeBitsIntLe(8, this.b);
    }

    public void _check() {
    }
    private long a;
    private long b;
    private BitsShiftByB32Le _root;
    private KaitaiStruct.ReadWrite _parent;
    public long a() { return a; }
    public void setA(long _v) { a = _v; }
    public long b() { return b; }
    public void setB(long _v) { b = _v; }
    public BitsShiftByB32Le _root() { return _root; }
    public void set_root(BitsShiftByB32Le _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
