// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ProcessRotate extends KaitaiStruct.ReadWrite {
    public static ProcessRotate fromFile(String fileName) throws IOException {
        return new ProcessRotate(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessRotate() {
        this(null, null, null);
    }

    public ProcessRotate(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRotate(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessRotate(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessRotate _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_buf1 = this._io.readBytes(5);
        this.buf1 = KaitaiStream.processRotateLeft(this._raw_buf1, 3, 1);
        this._raw_buf2 = this._io.readBytes(5);
        this.buf2 = KaitaiStream.processRotateLeft(this._raw_buf2, 8 - (3), 1);
        this.key = this._io.readU1();
        this._raw_buf3 = this._io.readBytes(5);
        this.buf3 = KaitaiStream.processRotateLeft(this._raw_buf3, key(), 1);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._raw_buf1 = KaitaiStream.processRotateLeft(this.buf1, 8 - (3), 1);
        if (this._raw_buf1.length != 5)
            throw new ConsistencyError("buf1", this._raw_buf1.length, 5);
        this._io.writeBytes(this._raw_buf1);
        this._raw_buf2 = KaitaiStream.processRotateLeft(this.buf2, 3, 1);
        if (this._raw_buf2.length != 5)
            throw new ConsistencyError("buf2", this._raw_buf2.length, 5);
        this._io.writeBytes(this._raw_buf2);
        this._io.writeU1(this.key);
        this._raw_buf3 = KaitaiStream.processRotateLeft(this.buf3, 8 - (key()), 1);
        if (this._raw_buf3.length != 5)
            throw new ConsistencyError("buf3", this._raw_buf3.length, 5);
        this._io.writeBytes(this._raw_buf3);
    }

    public void _check() {
    }
    private byte[] buf1;
    private byte[] buf2;
    private int key;
    private byte[] buf3;
    private ProcessRotate _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_buf1;
    private byte[] _raw_buf2;
    private byte[] _raw_buf3;
    public byte[] buf1() { return buf1; }
    public void setBuf1(byte[] _v) { buf1 = _v; }
    public byte[] buf2() { return buf2; }
    public void setBuf2(byte[] _v) { buf2 = _v; }
    public int key() { return key; }
    public void setKey(int _v) { key = _v; }
    public byte[] buf3() { return buf3; }
    public void setBuf3(byte[] _v) { buf3 = _v; }
    public ProcessRotate _root() { return _root; }
    public void set_root(ProcessRotate _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_buf1() { return _raw_buf1; }
    public void set_raw_Buf1(byte[] _v) { _raw_buf1 = _v; }
    public byte[] _raw_buf2() { return _raw_buf2; }
    public void set_raw_Buf2(byte[] _v) { _raw_buf2 = _v; }
    public byte[] _raw_buf3() { return _raw_buf3; }
    public void set_raw_Buf3(byte[] _v) { _raw_buf3 = _v; }
}
