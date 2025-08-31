// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class EofExceptionU4 extends KaitaiStruct.ReadWrite {
    public static EofExceptionU4 fromFile(String fileName) throws IOException {
        return new EofExceptionU4(new ByteBufferKaitaiStream(fileName));
    }
    public EofExceptionU4() {
        this(null, null, null);
    }

    public EofExceptionU4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionU4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionU4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EofExceptionU4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.prebuf = this._io.readBytes(9);
        this.failInt = this._io.readU4le();
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytes(this.prebuf);
        this._io.writeU4le(this.failInt);
    }

    public void _check() {
        if (this.prebuf.length != 9)
            throw new ConsistencyError("prebuf", this.prebuf.length, 9);
    }
    private byte[] prebuf;
    private long failInt;
    private EofExceptionU4 _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] prebuf() { return prebuf; }
    public void setPrebuf(byte[] _v) { prebuf = _v; }
    public long failInt() { return failInt; }
    public void setFailInt(long _v) { failInt = _v; }
    public EofExceptionU4 _root() { return _root; }
    public void set_root(EofExceptionU4 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
