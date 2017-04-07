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

public class TermStrz extends KaitaiStruct {
    public static TermStrz fromFile(String fileName) throws IOException {
        return new TermStrz(new KaitaiStream(fileName));
    }

    public TermStrz(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public TermStrz(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public TermStrz(KaitaiStream _io, KaitaiStruct _parent, TermStrz _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.s1 = new String(this._io.readBytesTerm(124, false, true, true), Charset.forName("UTF-8"));
        this.s2 = new String(this._io.readBytesTerm(124, false, false, true), Charset.forName("UTF-8"));
        this.s3 = new String(this._io.readBytesTerm(64, true, true, true), Charset.forName("UTF-8"));
    }
    private String s1;
    private String s2;
    private String s3;
    private TermStrz _root;
    private KaitaiStruct _parent;
    public String s1() { return s1; }
    public String s2() { return s2; }
    public String s3() { return s3; }
    public TermStrz _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
