// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsUnalignedB32Be extends KaitaiStruct.ReadWrite {
    public static BitsUnalignedB32Be fromFile(String fileName) throws IOException {
        return new BitsUnalignedB32Be(new ByteBufferKaitaiStream(fileName));
    }
    public BitsUnalignedB32Be() {
        this(null, null, null);
    }

    public BitsUnalignedB32Be(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsUnalignedB32Be(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsUnalignedB32Be(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsUnalignedB32Be _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readBitsIntBe(1) != 0;
        this.b = this._io.readBitsIntBe(32);
        this.c = this._io.readBitsIntBe(7);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBitsIntBe(1, (this.a ? 1 : 0));
        this._io.writeBitsIntBe(32, this.b);
        this._io.writeBitsIntBe(7, this.c);
    }

    public void _check() {
    }
    private boolean a;
    private long b;
    private long c;
    private BitsUnalignedB32Be _root;
    private KaitaiStruct.ReadWrite _parent;
    public boolean a() { return a; }
    public void setA(boolean _v) { a = _v; }
    public long b() { return b; }
    public void setB(long _v) { b = _v; }
    public long c() { return c; }
    public void setC(long _v) { c = _v; }
    public BitsUnalignedB32Be _root() { return _root; }
    public void set_root(BitsUnalignedB32Be _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
