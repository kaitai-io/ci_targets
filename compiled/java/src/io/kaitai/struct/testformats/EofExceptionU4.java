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

public class EofExceptionU4 extends KaitaiStruct {
    public static EofExceptionU4 fromFile(String fileName) throws IOException {
        return new EofExceptionU4(new KaitaiStream(fileName));
    }

    public EofExceptionU4(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public EofExceptionU4(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public EofExceptionU4(KaitaiStream _io, KaitaiStruct _parent, EofExceptionU4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.prebuf = this._io.readBytes(9);
        this.failInt = this._io.readU4le();
    }
    private byte[] prebuf;
    private long failInt;
    private EofExceptionU4 _root;
    private KaitaiStruct _parent;
    public byte[] prebuf() { return prebuf; }
    public long failInt() { return failInt; }
    public EofExceptionU4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
