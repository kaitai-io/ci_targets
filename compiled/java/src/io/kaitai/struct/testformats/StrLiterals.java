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

public class StrLiterals extends KaitaiStruct {
    public static StrLiterals fromFile(String fileName) throws IOException {
        return new StrLiterals(new KaitaiStream(fileName));
    }

    public StrLiterals(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public StrLiterals(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public StrLiterals(KaitaiStream _io, KaitaiStruct _parent, StrLiterals _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
    }
    private String octalEatup2;
    public String octalEatup2() {
        if (this.octalEatup2 != null)
            return this.octalEatup2;
        this.octalEatup2 = "\0022";
        return this.octalEatup2;
    }
    private String backslashes;
    public String backslashes() {
        if (this.backslashes != null)
            return this.backslashes;
        this.backslashes = "\\\\\\";
        return this.backslashes;
    }
    private String octalEatup;
    public String octalEatup() {
        if (this.octalEatup != null)
            return this.octalEatup;
        this.octalEatup = "\00022";
        return this.octalEatup;
    }
    private String doubleQuotes;
    public String doubleQuotes() {
        if (this.doubleQuotes != null)
            return this.doubleQuotes;
        this.doubleQuotes = "\"\"\"";
        return this.doubleQuotes;
    }
    private String complexStr;
    public String complexStr() {
        if (this.complexStr != null)
            return this.complexStr;
        this.complexStr = "\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b";
        return this.complexStr;
    }
    private StrLiterals _root;
    private KaitaiStruct _parent;
    public StrLiterals _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
