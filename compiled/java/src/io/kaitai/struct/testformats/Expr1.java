// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class Expr1 extends KaitaiStruct {
    public static Expr1 fromFile(String fileName) throws IOException {
        return new Expr1(new ByteBufferKaitaiStream(fileName));
    }

    public Expr1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Expr1(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Expr1(KaitaiStream _io, KaitaiStruct _parent, Expr1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1Mod()), StandardCharsets.US_ASCII);
    }

    public void _fetchInstances() {
    }
    private Integer lenOf1Mod;
    public Integer lenOf1Mod() {
        if (this.lenOf1Mod != null)
            return this.lenOf1Mod;
        this.lenOf1Mod = ((Number) (lenOf1() - 2)).intValue();
        return this.lenOf1Mod;
    }
    private Integer str1Len;
    public Integer str1Len() {
        if (this.str1Len != null)
            return this.str1Len;
        this.str1Len = ((Number) (str1().length())).intValue();
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
