// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsShiftByB64Le extends KaitaiStruct.ReadWrite {
    public static BitsShiftByB64Le fromFile(String fileName) throws IOException {
        return new BitsShiftByB64Le(new ByteBufferKaitaiStream(fileName));
    }
    public BitsShiftByB64Le() {
        this(null, null, null);
    }

    public BitsShiftByB64Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsShiftByB64Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsShiftByB64Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsShiftByB64Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readBitsIntLe(64);
        this.b = this._io.readBitsIntLe(8);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBitsIntLe(64, this.a);
        this._io.writeBitsIntLe(8, this.b);
    }

    public void _check() {
    }
    private long a;
    private long b;
    private BitsShiftByB64Le _root;
    private KaitaiStruct.ReadWrite _parent;
    public long a() { return a; }
    public void setA(long _v) { a = _v; }
    public long b() { return b; }
    public void setB(long _v) { b = _v; }
    public BitsShiftByB64Le _root() { return _root; }
    public void set_root(BitsShiftByB64Le _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
