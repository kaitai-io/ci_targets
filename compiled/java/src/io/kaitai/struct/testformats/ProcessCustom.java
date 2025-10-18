// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessCustom extends KaitaiStruct {
    public static ProcessCustom fromFile(String fileName) throws IOException {
        return new ProcessCustom(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessCustom(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCustom(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessCustom(KaitaiStream _io, KaitaiStruct _parent, ProcessCustom _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_buf1 = this._io.readBytes(5);
        MyCustomFx _process__raw_buf1 = new MyCustomFx(7, true, new byte[] { 32, 48, 64 });
        this.buf1 = _process__raw_buf1.decode(this._raw_buf1);
        this._raw_buf2 = this._io.readBytes(5);
        nested.deeply.CustomFx _process__raw_buf2 = new nested.deeply.CustomFx(7);
        this.buf2 = _process__raw_buf2.decode(this._raw_buf2);
        this.key = this._io.readU1();
        this._raw_buf3 = this._io.readBytes(5);
        MyCustomFx _process__raw_buf3 = new MyCustomFx(key(), false, new byte[] { 0 });
        this.buf3 = _process__raw_buf3.decode(this._raw_buf3);
    }

    public void _fetchInstances() {
    }
    public byte[] buf1() { return buf1; }
    public byte[] buf2() { return buf2; }
    public int key() { return key; }
    public byte[] buf3() { return buf3; }
    public ProcessCustom _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_buf1() { return _raw_buf1; }
    public byte[] _raw_buf2() { return _raw_buf2; }
    public byte[] _raw_buf3() { return _raw_buf3; }
    private byte[] buf1;
    private byte[] buf2;
    private int key;
    private byte[] buf3;
    private ProcessCustom _root;
    private KaitaiStruct _parent;
    private byte[] _raw_buf1;
    private byte[] _raw_buf2;
    private byte[] _raw_buf3;
}
