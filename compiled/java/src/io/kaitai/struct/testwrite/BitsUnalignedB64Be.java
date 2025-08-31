// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsUnalignedB64Be extends KaitaiStruct.ReadWrite {
    public static BitsUnalignedB64Be fromFile(String fileName) throws IOException {
        return new BitsUnalignedB64Be(new ByteBufferKaitaiStream(fileName));
    }
    public BitsUnalignedB64Be() {
        this(null, null, null);
    }

    public BitsUnalignedB64Be(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsUnalignedB64Be(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsUnalignedB64Be(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsUnalignedB64Be _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readBitsIntBe(1) != 0;
        this.b = this._io.readBitsIntBe(64);
        this.c = this._io.readBitsIntBe(7);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBitsIntBe(1, (this.a ? 1 : 0));
        this._io.writeBitsIntBe(64, this.b);
        this._io.writeBitsIntBe(7, this.c);
    }

    public void _check() {
    }
    private boolean a;
    private long b;
    private long c;
    private BitsUnalignedB64Be _root;
    private KaitaiStruct.ReadWrite _parent;
    public boolean a() { return a; }
    public void setA(boolean _v) { a = _v; }
    public long b() { return b; }
    public void setB(long _v) { b = _v; }
    public long c() { return c; }
    public void setC(long _v) { c = _v; }
    public BitsUnalignedB64Be _root() { return _root; }
    public void set_root(BitsUnalignedB64Be _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
