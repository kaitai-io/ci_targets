// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ProcessCustomNoArgs extends KaitaiStruct.ReadWrite {
    public static ProcessCustomNoArgs fromFile(String fileName) throws IOException {
        return new ProcessCustomNoArgs(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessCustomNoArgs() {
        this(null, null, null);
    }

    public ProcessCustomNoArgs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCustomNoArgs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessCustomNoArgs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessCustomNoArgs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_buf = this._io.readBytes(5);
        CustomFxNoArgs _process__raw_buf = new CustomFxNoArgs();
        this.buf = _process__raw_buf.decode(this._raw_buf);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        CustomFxNoArgs _process_buf = new CustomFxNoArgs();
        this._raw_buf = _process_buf.encode(this.buf);
        if (this._raw_buf.length != 5)
            throw new ConsistencyError("buf", 5, this._raw_buf.length);
        this._io.writeBytes(this._raw_buf);
    }

    public void _check() {
        _dirty = false;
    }
    public byte[] buf() { return buf; }
    public void setBuf(byte[] _v) { _dirty = true; buf = _v; }
    public ProcessCustomNoArgs _root() { return _root; }
    public void set_root(ProcessCustomNoArgs _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_buf() { return _raw_buf; }
    public void set_raw_Buf(byte[] _v) { _dirty = true; _raw_buf = _v; }
    private byte[] buf;
    private ProcessCustomNoArgs _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_buf;
}
