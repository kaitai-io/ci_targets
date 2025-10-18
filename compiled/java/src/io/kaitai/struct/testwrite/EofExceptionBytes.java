// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class EofExceptionBytes extends KaitaiStruct.ReadWrite {
    public static EofExceptionBytes fromFile(String fileName) throws IOException {
        return new EofExceptionBytes(new ByteBufferKaitaiStream(fileName));
    }
    public EofExceptionBytes() {
        this(null, null, null);
    }

    public EofExceptionBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EofExceptionBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.buf = this._io.readBytes(13);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.buf);
    }

    public void _check() {
        if (this.buf.length != 13)
            throw new ConsistencyError("buf", 13, this.buf.length);
        _dirty = false;
    }
    public byte[] buf() { return buf; }
    public void setBuf(byte[] _v) { _dirty = true; buf = _v; }
    public EofExceptionBytes _root() { return _root; }
    public void set_root(EofExceptionBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private byte[] buf;
    private EofExceptionBytes _root;
    private KaitaiStruct.ReadWrite _parent;
}
