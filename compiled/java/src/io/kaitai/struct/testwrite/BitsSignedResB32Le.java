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
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBitsIntLe(32, this.a);
    }

    public void _check() {
    }
    private long a;
    private BitsSignedResB32Le _root;
    private KaitaiStruct.ReadWrite _parent;
    public long a() { return a; }
    public void setA(long _v) { a = _v; }
    public BitsSignedResB32Le _root() { return _root; }
    public void set_root(BitsSignedResB32Le _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
