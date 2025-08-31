// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class StrLiterals extends KaitaiStruct.ReadWrite {
    public static StrLiterals fromFile(String fileName) throws IOException {
        return new StrLiterals(new ByteBufferKaitaiStream(fileName));
    }
    public StrLiterals() {
        this(null, null, null);
    }

    public StrLiterals(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrLiterals(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrLiterals(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrLiterals _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
    }

    public void _check() {
    }
    private String backslashes;
    public String backslashes() {
        if (this.backslashes != null)
            return this.backslashes;
        this.backslashes = "\\\\\\";
        return this.backslashes;
    }
    public void _invalidateBackslashes() { this.backslashes = null; }
    private String complexStr;
    public String complexStr() {
        if (this.complexStr != null)
            return this.complexStr;
        this.complexStr = "\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b";
        return this.complexStr;
    }
    public void _invalidateComplexStr() { this.complexStr = null; }
    private String doubleQuotes;
    public String doubleQuotes() {
        if (this.doubleQuotes != null)
            return this.doubleQuotes;
        this.doubleQuotes = "\"\"\"";
        return this.doubleQuotes;
    }
    public void _invalidateDoubleQuotes() { this.doubleQuotes = null; }
    private String octalEatup;
    public String octalEatup() {
        if (this.octalEatup != null)
            return this.octalEatup;
        this.octalEatup = "\00022";
        return this.octalEatup;
    }
    public void _invalidateOctalEatup() { this.octalEatup = null; }
    private String octalEatup2;
    public String octalEatup2() {
        if (this.octalEatup2 != null)
            return this.octalEatup2;
        this.octalEatup2 = "\0022";
        return this.octalEatup2;
    }
    public void _invalidateOctalEatup2() { this.octalEatup2 = null; }
    private StrLiterals _root;
    private KaitaiStruct.ReadWrite _parent;
    public StrLiterals _root() { return _root; }
    public void set_root(StrLiterals _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
