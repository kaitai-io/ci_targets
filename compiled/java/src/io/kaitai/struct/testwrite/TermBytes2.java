// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class TermBytes2 extends KaitaiStruct.ReadWrite {
    public static TermBytes2 fromFile(String fileName) throws IOException {
        return new TermBytes2(new ByteBufferKaitaiStream(fileName));
    }
    public TermBytes2() {
        this(null, null, null);
    }

    public TermBytes2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermBytes2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TermBytes2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TermBytes2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.s1 = this._io.readBytesTerm((byte) 124, false, true, true);
        this.s2 = this._io.readBytesTerm((byte) 124, true, true, true);
        this.s3 = this._io.readBytesTerm((byte) 64, false, false, true);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytes(this.s1);
        this._io.writeU1(124);
        this._io.writeBytes(this.s2);
        this._io.writeBytes(this.s3);
        {
            long _pos = this._io.pos();
            this._io.writeU1(64);
            this._io.seek(_pos);
        }
    }

    public void _check() {
        if (KaitaiStream.byteArrayIndexOf(this.s1, ((byte) 124)) != -1)
            throw new ConsistencyError("s1", KaitaiStream.byteArrayIndexOf(this.s1, ((byte) 124)), -1);
        if (this.s2.length == 0)
            throw new ConsistencyError("s2", this.s2.length, 0);
        if (KaitaiStream.byteArrayIndexOf(this.s2, ((byte) 124)) != this.s2.length - 1)
            throw new ConsistencyError("s2", KaitaiStream.byteArrayIndexOf(this.s2, ((byte) 124)), this.s2.length - 1);
        if (KaitaiStream.byteArrayIndexOf(this.s3, ((byte) 64)) != -1)
            throw new ConsistencyError("s3", KaitaiStream.byteArrayIndexOf(this.s3, ((byte) 64)), -1);
    }
    private byte[] s1;
    private byte[] s2;
    private byte[] s3;
    private TermBytes2 _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] s1() { return s1; }
    public void setS1(byte[] _v) { s1 = _v; }
    public byte[] s2() { return s2; }
    public void setS2(byte[] _v) { s2 = _v; }
    public byte[] s3() { return s3; }
    public void setS3(byte[] _v) { s3 = _v; }
    public TermBytes2 _root() { return _root; }
    public void set_root(TermBytes2 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
