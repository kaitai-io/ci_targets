// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ProcessXor4Const extends KaitaiStruct.ReadWrite {
    public static ProcessXor4Const fromFile(String fileName) throws IOException {
        return new ProcessXor4Const(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessXor4Const() {
        this(null, null, null);
    }

    public ProcessXor4Const(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessXor4Const(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessXor4Const(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessXor4Const _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.key = this._io.readBytes(4);
        this._raw_buf = this._io.readBytesFull();
        this.buf = KaitaiStream.processXor(this._raw_buf, new byte[] { -20, -69, -93, 20 });
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.key);
        this._raw_buf = KaitaiStream.processXor(this.buf, new byte[] { -20, -69, -93, 20 });
        this._io.writeBytes(this._raw_buf);
        if (!(this._io.isEof()))
            throw new ConsistencyError("buf", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        if (this.key.length != 4)
            throw new ConsistencyError("key", 4, this.key.length);
        _dirty = false;
    }
    public byte[] key() { return key; }
    public void setKey(byte[] _v) { _dirty = true; key = _v; }
    public byte[] buf() { return buf; }
    public void setBuf(byte[] _v) { _dirty = true; buf = _v; }
    public ProcessXor4Const _root() { return _root; }
    public void set_root(ProcessXor4Const _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_buf() { return _raw_buf; }
    public void set_raw_Buf(byte[] _v) { _dirty = true; _raw_buf = _v; }
    private byte[] key;
    private byte[] buf;
    private ProcessXor4Const _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_buf;
}
