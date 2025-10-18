// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class Expr3 extends KaitaiStruct.ReadWrite {
    public static Expr3 fromFile(String fileName) throws IOException {
        return new Expr3(new ByteBufferKaitaiStream(fileName));
    }
    public Expr3() {
        this(null, null, null);
    }

    public Expr3(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Expr3(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Expr3(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Expr3 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        this.two = new String(this._io.readBytes(3), StandardCharsets.US_ASCII);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.one);
        this._io.writeBytes((this.two).getBytes(Charset.forName("ASCII")));
    }

    public void _check() {
        if ((this.two).getBytes(Charset.forName("ASCII")).length != 3)
            throw new ConsistencyError("two", 3, (this.two).getBytes(Charset.forName("ASCII")).length);
        _dirty = false;
    }
    public String four() {
        if (this.four != null)
            return this.four;
        this.four = ("_" + two()) + "_";
        return this.four;
    }
    public void _invalidateFour() { this.four = null; }
    public Boolean isStrEq() {
        if (this.isStrEq != null)
            return this.isStrEq;
        this.isStrEq = two().equals("ACK");
        return this.isStrEq;
    }
    public void _invalidateIsStrEq() { this.isStrEq = null; }
    public Boolean isStrGe() {
        if (this.isStrGe != null)
            return this.isStrGe;
        this.isStrGe = (two().compareTo("ACK2") >= 0);
        return this.isStrGe;
    }
    public void _invalidateIsStrGe() { this.isStrGe = null; }
    public Boolean isStrGt() {
        if (this.isStrGt != null)
            return this.isStrGt;
        this.isStrGt = (two().compareTo("ACK2") > 0);
        return this.isStrGt;
    }
    public void _invalidateIsStrGt() { this.isStrGt = null; }
    public Boolean isStrLe() {
        if (this.isStrLe != null)
            return this.isStrLe;
        this.isStrLe = (two().compareTo("ACK2") <= 0);
        return this.isStrLe;
    }
    public void _invalidateIsStrLe() { this.isStrLe = null; }
    public Boolean isStrLt() {
        if (this.isStrLt != null)
            return this.isStrLt;
        this.isStrLt = (two().compareTo("ACK2") < 0);
        return this.isStrLt;
    }
    public void _invalidateIsStrLt() { this.isStrLt = null; }
    public Boolean isStrLt2() {
        if (this.isStrLt2 != null)
            return this.isStrLt2;
        this.isStrLt2 = (three().compareTo(two()) < 0);
        return this.isStrLt2;
    }
    public void _invalidateIsStrLt2() { this.isStrLt2 = null; }
    public Boolean isStrNe() {
        if (this.isStrNe != null)
            return this.isStrNe;
        this.isStrNe = !two().equals("ACK");
        return this.isStrNe;
    }
    public void _invalidateIsStrNe() { this.isStrNe = null; }
    public Boolean testNot() {
        if (this.testNot != null)
            return this.testNot;
        this.testNot = !(false);
        return this.testNot;
    }
    public void _invalidateTestNot() { this.testNot = null; }
    public String three() {
        if (this.three != null)
            return this.three;
        this.three = "@" + two();
        return this.three;
    }
    public void _invalidateThree() { this.three = null; }
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public String two() { return two; }
    public void setTwo(String _v) { _dirty = true; two = _v; }
    public Expr3 _root() { return _root; }
    public void set_root(Expr3 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private String four;
    private Boolean isStrEq;
    private Boolean isStrGe;
    private Boolean isStrGt;
    private Boolean isStrLe;
    private Boolean isStrLt;
    private Boolean isStrLt2;
    private Boolean isStrNe;
    private Boolean testNot;
    private String three;
    private int one;
    private String two;
    private Expr3 _root;
    private KaitaiStruct.ReadWrite _parent;
}
