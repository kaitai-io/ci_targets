// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class StrLiterals extends KaitaiStruct {
    public static StrLiterals fromFile(String fileName) throws IOException {
        return new StrLiterals(new ByteBufferKaitaiStream(fileName));
    }

    public StrLiterals(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrLiterals(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrLiterals(KaitaiStream _io, KaitaiStruct _parent, StrLiterals _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
    }
    public String backslashes() {
        if (this.backslashes != null)
            return this.backslashes;
        this.backslashes = "\\\\\\";
        return this.backslashes;
    }
    public String complexStr() {
        if (this.complexStr != null)
            return this.complexStr;
        this.complexStr = "\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b";
        return this.complexStr;
    }
    public String doubleQuotes() {
        if (this.doubleQuotes != null)
            return this.doubleQuotes;
        this.doubleQuotes = "\"\"\"";
        return this.doubleQuotes;
    }
    public String octalEatup() {
        if (this.octalEatup != null)
            return this.octalEatup;
        this.octalEatup = "\00022";
        return this.octalEatup;
    }
    public String octalEatup2() {
        if (this.octalEatup2 != null)
            return this.octalEatup2;
        this.octalEatup2 = "\0022";
        return this.octalEatup2;
    }
    public StrLiterals _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private String backslashes;
    private String complexStr;
    private String doubleQuotes;
    private String octalEatup;
    private String octalEatup2;
    private StrLiterals _root;
    private KaitaiStruct _parent;
}
