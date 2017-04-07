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

public class FixedContents extends KaitaiStruct {
    public static FixedContents fromFile(String fileName) throws IOException {
        return new FixedContents(new KaitaiStream(fileName));
    }

    public FixedContents(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public FixedContents(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public FixedContents(KaitaiStream _io, KaitaiStruct _parent, FixedContents _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.normal = this._io.ensureFixedContents(new byte[] { 80, 65, 67, 75, 45, 49 });
        this.highBit8 = this._io.ensureFixedContents(new byte[] { -1, -1 });
    }
    private byte[] normal;
    private byte[] highBit8;
    private FixedContents _root;
    private KaitaiStruct _parent;
    public byte[] normal() { return normal; }
    public byte[] highBit8() { return highBit8; }
    public FixedContents _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
