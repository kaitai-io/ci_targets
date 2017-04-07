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

public class ZlibWithHeader78 extends KaitaiStruct {
    public static ZlibWithHeader78 fromFile(String fileName) throws IOException {
        return new ZlibWithHeader78(new KaitaiStream(fileName));
    }

    public ZlibWithHeader78(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public ZlibWithHeader78(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public ZlibWithHeader78(KaitaiStream _io, KaitaiStruct _parent, ZlibWithHeader78 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this._raw_data = this._io.readBytesFull();
        this.data = KaitaiStream.processZlib(this._raw_data);
    }
    private byte[] data;
    private ZlibWithHeader78 _root;
    private KaitaiStruct _parent;
    private byte[] _raw_data;
    public byte[] data() { return data; }
    public ZlibWithHeader78 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_data() { return _raw_data; }
}
