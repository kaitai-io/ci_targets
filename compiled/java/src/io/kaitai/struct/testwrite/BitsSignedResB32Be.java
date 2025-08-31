// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSignedResB32Be extends KaitaiStruct.ReadWrite {
    public static BitsSignedResB32Be fromFile(String fileName) throws IOException {
        return new BitsSignedResB32Be(new ByteBufferKaitaiStream(fileName));
    }
    public BitsSignedResB32Be() {
        this(null, null, null);
    }

    public BitsSignedResB32Be(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsSignedResB32Be(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsSignedResB32Be(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsSignedResB32Be _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readBitsIntBe(32);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBitsIntBe(32, this.a);
    }

    public void _check() {
    }
    private long a;
    private BitsSignedResB32Be _root;
    private KaitaiStruct.ReadWrite _parent;
    public long a() { return a; }
    public void setA(long _v) { a = _v; }
    public BitsSignedResB32Be _root() { return _root; }
    public void set_root(BitsSignedResB32Be _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
