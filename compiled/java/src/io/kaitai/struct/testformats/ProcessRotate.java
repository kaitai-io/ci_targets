// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessRotate extends KaitaiStruct {
    public static ProcessRotate fromFile(String fileName) throws IOException {
        return new ProcessRotate(new KaitaiStream(fileName));
    }

    public ProcessRotate(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public ProcessRotate(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public ProcessRotate(KaitaiStream _io, KaitaiStruct _parent, ProcessRotate _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this._raw_buf1 = this._io.readBytes(5);
        this.buf1 = KaitaiStream.processRotateLeft(this._raw_buf1, 3, 1);
        this._raw_buf2 = this._io.readBytes(5);
        this.buf2 = KaitaiStream.processRotateLeft(this._raw_buf2, 8 - (3), 1);
        this.key = this._io.readU1();
        this._raw_buf3 = this._io.readBytes(5);
        this.buf3 = KaitaiStream.processRotateLeft(this._raw_buf3, key(), 1);
    }
    private byte[] buf1;
    private byte[] buf2;
    private int key;
    private byte[] buf3;
    private ProcessRotate _root;
    private KaitaiStruct _parent;
    private byte[] _raw_buf1;
    private byte[] _raw_buf2;
    private byte[] _raw_buf3;
    public byte[] buf1() { return buf1; }
    public byte[] buf2() { return buf2; }
    public int key() { return key; }
    public byte[] buf3() { return buf3; }
    public ProcessRotate _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_buf1() { return _raw_buf1; }
    public byte[] _raw_buf2() { return _raw_buf2; }
    public byte[] _raw_buf3() { return _raw_buf3; }
}
