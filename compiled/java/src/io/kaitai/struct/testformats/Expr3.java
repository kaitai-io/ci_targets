// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class Expr3 extends KaitaiStruct {
    public static Expr3 fromFile(String fileName) throws IOException {
        return new Expr3(new ByteBufferKaitaiStream(fileName));
    }

    public Expr3(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Expr3(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Expr3(KaitaiStream _io, KaitaiStruct _parent, Expr3 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
        this.two = new String(this._io.readBytes(3), StandardCharsets.US_ASCII);
    }
    private Boolean isStrLe;
    public Boolean isStrLe() {
        if (this.isStrLe != null)
            return this.isStrLe;
        boolean _tmp = (boolean) ((two().compareTo("ACK2") <= 0));
        this.isStrLe = _tmp;
        return this.isStrLe;
    }
    private Boolean isStrGe;
    public Boolean isStrGe() {
        if (this.isStrGe != null)
            return this.isStrGe;
        boolean _tmp = (boolean) ((two().compareTo("ACK2") >= 0));
        this.isStrGe = _tmp;
        return this.isStrGe;
    }
    private String three;
    public String three() {
        if (this.three != null)
            return this.three;
        this.three = "@" + two();
        return this.three;
    }
    private Boolean isStrGt;
    public Boolean isStrGt() {
        if (this.isStrGt != null)
            return this.isStrGt;
        boolean _tmp = (boolean) ((two().compareTo("ACK2") > 0));
        this.isStrGt = _tmp;
        return this.isStrGt;
    }
    private Boolean isStrEq;
    public Boolean isStrEq() {
        if (this.isStrEq != null)
            return this.isStrEq;
        boolean _tmp = (boolean) (two().equals("ACK"));
        this.isStrEq = _tmp;
        return this.isStrEq;
    }
    private Boolean isStrLt2;
    public Boolean isStrLt2() {
        if (this.isStrLt2 != null)
            return this.isStrLt2;
        boolean _tmp = (boolean) ((three().compareTo(two()) < 0));
        this.isStrLt2 = _tmp;
        return this.isStrLt2;
    }
    private Boolean isStrLt;
    public Boolean isStrLt() {
        if (this.isStrLt != null)
            return this.isStrLt;
        boolean _tmp = (boolean) ((two().compareTo("ACK2") < 0));
        this.isStrLt = _tmp;
        return this.isStrLt;
    }
    private String four;
    public String four() {
        if (this.four != null)
            return this.four;
        this.four = "_" + two() + "_";
        return this.four;
    }
    private Boolean isStrNe;
    public Boolean isStrNe() {
        if (this.isStrNe != null)
            return this.isStrNe;
        boolean _tmp = (boolean) (!(two()).equals("ACK"));
        this.isStrNe = _tmp;
        return this.isStrNe;
    }
    private Boolean testNot;
    public Boolean testNot() {
        if (this.testNot != null)
            return this.testNot;
        boolean _tmp = (boolean) (!(false));
        this.testNot = _tmp;
        return this.testNot;
    }
    private int one;
    private String two;
    private Expr3 _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public String two() { return two; }
    public Expr3 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
