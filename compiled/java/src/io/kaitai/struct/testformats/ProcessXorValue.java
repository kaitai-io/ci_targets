// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class ProcessXorValue extends KaitaiStruct {
    public static ProcessXorValue fromFile(String fileName) throws IOException {
        return new ProcessXorValue(new KaitaiStream(fileName));
    }

    public ProcessXorValue(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public ProcessXorValue(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public ProcessXorValue(KaitaiStream _io, KaitaiStruct _parent, ProcessXorValue _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.key = this._io.readU1();
        this._raw_buf = this._io.readBytesFull();
        this.buf = KaitaiStream.processXor(this._raw_buf, key());
    }
    private int key;
    private byte[] buf;
    private ProcessXorValue _root;
    private KaitaiStruct _parent;
    private byte[] _raw_buf;
    public int key() { return key; }
    public byte[] buf() { return buf; }
    public ProcessXorValue _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_buf() { return _raw_buf; }
}
