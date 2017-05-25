// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class Expr1 extends KaitaiStruct {
    public static Expr1 fromFile(String fileName) throws IOException {
        return new Expr1(new KaitaiStream(fileName));
    }

    public Expr1(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public Expr1(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public Expr1(KaitaiStream _io, KaitaiStruct _parent, Expr1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1Mod()), Charset.forName("ASCII"));
    }
    private Integer lenOf1Mod;
    public Integer lenOf1Mod() {
        if (this.lenOf1Mod != null)
            return this.lenOf1Mod;
        int _tmp = (int) ((lenOf1() - 2));
        this.lenOf1Mod = _tmp;
        return this.lenOf1Mod;
    }
    private Integer str1Len;
    public Integer str1Len() {
        if (this.str1Len != null)
            return this.str1Len;
        int _tmp = (int) (str1().length());
        this.str1Len = _tmp;
        return this.str1Len;
    }
    private int lenOf1;
    private String str1;
    private Expr1 _root;
    private KaitaiStruct _parent;
    public int lenOf1() { return lenOf1; }
    public String str1() { return str1; }
    public Expr1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
