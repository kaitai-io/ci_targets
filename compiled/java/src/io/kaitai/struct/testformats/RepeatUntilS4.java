// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class RepeatUntilS4 extends KaitaiStruct {
    public static RepeatUntilS4 fromFile(String fileName) throws IOException {
        return new RepeatUntilS4(new KaitaiStream(fileName));
    }

    public RepeatUntilS4(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public RepeatUntilS4(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public RepeatUntilS4(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilS4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.entries = new ArrayList<Integer>();
        {
            int _it;
            do {
                _it = this._io.readS4le();
                this.entries.add(_it);
            } while (!(_it == -(1)));
        }
        this.afterall = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("ASCII"));
    }
    private ArrayList<Integer> entries;
    private String afterall;
    private RepeatUntilS4 _root;
    private KaitaiStruct _parent;
    public ArrayList<Integer> entries() { return entries; }
    public String afterall() { return afterall; }
    public RepeatUntilS4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
