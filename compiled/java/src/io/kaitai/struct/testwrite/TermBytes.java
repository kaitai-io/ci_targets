// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class TermBytes extends KaitaiStruct.ReadWrite {
    public static TermBytes fromFile(String fileName) throws IOException {
        return new TermBytes(new ByteBufferKaitaiStream(fileName));
    }
    public TermBytes() {
        this(null, null, null);
    }

    public TermBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TermBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TermBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.s1 = this._io.readBytesTerm((byte) 124, false, true, true);
        this.s2 = this._io.readBytesTerm((byte) 124, false, false, true);
        this.s3 = this._io.readBytesTerm((byte) 64, true, true, true);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.s1);
        this._io.writeU1(124);
        this._io.writeBytes(this.s2);
        {
            long _pos = this._io.pos();
            this._io.writeU1(124);
            this._io.seek(_pos);
        }
        this._io.writeBytes(this.s3);
    }

    public void _check() {
        if (KaitaiStream.byteArrayIndexOf(this.s1, ((byte) 124)) != -1)
            throw new ConsistencyError("s1", -1, KaitaiStream.byteArrayIndexOf(this.s1, ((byte) 124)));
        if (KaitaiStream.byteArrayIndexOf(this.s2, ((byte) 124)) != -1)
            throw new ConsistencyError("s2", -1, KaitaiStream.byteArrayIndexOf(this.s2, ((byte) 124)));
        if (this.s3.length == 0)
            throw new ConsistencyError("s3", 0, this.s3.length);
        if (KaitaiStream.byteArrayIndexOf(this.s3, ((byte) 64)) != this.s3.length - 1)
            throw new ConsistencyError("s3", this.s3.length - 1, KaitaiStream.byteArrayIndexOf(this.s3, ((byte) 64)));
        _dirty = false;
    }
    private byte[] s1;
    private byte[] s2;
    private byte[] s3;
    private TermBytes _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] s1() { return s1; }
    public void setS1(byte[] _v) { _dirty = true; s1 = _v; }
    public byte[] s2() { return s2; }
    public void setS2(byte[] _v) { _dirty = true; s2 = _v; }
    public byte[] s3() { return s3; }
    public void setS3(byte[] _v) { _dirty = true; s3 = _v; }
    public TermBytes _root() { return _root; }
    public void set_root(TermBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
