// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ProcessXorValue extends KaitaiStruct.ReadWrite {
    public static ProcessXorValue fromFile(String fileName) throws IOException {
        return new ProcessXorValue(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessXorValue() {
        this(null, null, null);
    }

    public ProcessXorValue(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessXorValue(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessXorValue(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessXorValue _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.key = this._io.readU1();
        this._raw_buf = this._io.readBytesFull();
        this.buf = KaitaiStream.processXor(this._raw_buf, ((Number) (key())).byteValue());
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU1(this.key);
        this._raw_buf = KaitaiStream.processXor(this.buf, ((Number) (key())).byteValue());
        this._io.writeBytes(this._raw_buf);
        if (!(this._io.isEof()))
            throw new ConsistencyError("buf", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
    }
    private int key;
    private byte[] buf;
    private ProcessXorValue _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_buf;
    public int key() { return key; }
    public void setKey(int _v) { key = _v; }
    public byte[] buf() { return buf; }
    public void setBuf(byte[] _v) { buf = _v; }
    public ProcessXorValue _root() { return _root; }
    public void set_root(ProcessXorValue _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_buf() { return _raw_buf; }
    public void set_raw_Buf(byte[] _v) { _raw_buf = _v; }
}
