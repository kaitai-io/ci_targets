// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ProcessXorConst extends KaitaiStruct.ReadWrite {
    public static ProcessXorConst fromFile(String fileName) throws IOException {
        return new ProcessXorConst(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessXorConst() {
        this(null, null, null);
    }

    public ProcessXorConst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessXorConst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessXorConst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessXorConst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.key = this._io.readU1();
        this._raw_buf = this._io.readBytesFull();
        this.buf = KaitaiStream.processXor(this._raw_buf, ((byte) 255));
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.key);
        this._raw_buf = KaitaiStream.processXor(this.buf, ((Number) (255)).byteValue());
        this._io.writeBytes(this._raw_buf);
        if (!(this._io.isEof()))
            throw new ConsistencyError("buf", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        _dirty = false;
    }
    private int key;
    private byte[] buf;
    private ProcessXorConst _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_buf;
    public int key() { return key; }
    public void setKey(int _v) { _dirty = true; key = _v; }
    public byte[] buf() { return buf; }
    public void setBuf(byte[] _v) { _dirty = true; buf = _v; }
    public ProcessXorConst _root() { return _root; }
    public void set_root(ProcessXorConst _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_buf() { return _raw_buf; }
    public void set_raw_Buf(byte[] _v) { _dirty = true; _raw_buf = _v; }
}
