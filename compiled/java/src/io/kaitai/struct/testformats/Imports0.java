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

public class Imports0 extends KaitaiStruct {
    public static Imports0 fromFile(String fileName) throws IOException {
        return new Imports0(new KaitaiStream(fileName));
    }

    public Imports0(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public Imports0(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public Imports0(KaitaiStream _io, KaitaiStruct _parent, Imports0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.two = this._io.readU1();
        this.hw = new HelloWorld(this._io);
    }
    private Integer hwOne;
    public Integer hwOne() {
        if (this.hwOne != null)
            return this.hwOne;
        int _tmp = (int) (hw().one());
        this.hwOne = _tmp;
        return this.hwOne;
    }
    private int two;
    private HelloWorld hw;
    private Imports0 _root;
    private KaitaiStruct _parent;
    public int two() { return two; }
    public HelloWorld hw() { return hw; }
    public Imports0 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
