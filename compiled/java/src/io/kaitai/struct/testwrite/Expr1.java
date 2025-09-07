// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class Expr1 extends KaitaiStruct.ReadWrite {
    public static Expr1 fromFile(String fileName) throws IOException {
        return new Expr1(new ByteBufferKaitaiStream(fileName));
    }
    public Expr1() {
        this(null, null, null);
    }

    public Expr1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Expr1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Expr1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Expr1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1Mod()), StandardCharsets.US_ASCII);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU2le(this.lenOf1);
        this._io.writeBytes((this.str1).getBytes(Charset.forName("ASCII")));
    }

    public void _check() {
        if ((this.str1).getBytes(Charset.forName("ASCII")).length != lenOf1Mod())
            throw new ConsistencyError("str1", lenOf1Mod(), (this.str1).getBytes(Charset.forName("ASCII")).length);
        _dirty = false;
    }
    private Integer lenOf1Mod;
    public Integer lenOf1Mod() {
        if (this.lenOf1Mod != null)
            return this.lenOf1Mod;
        this.lenOf1Mod = ((Number) (lenOf1() - 2)).intValue();
        return this.lenOf1Mod;
    }
    public void _invalidateLenOf1Mod() { this.lenOf1Mod = null; }
    private Integer str1Len;
    public Integer str1Len() {
        if (this.str1Len != null)
            return this.str1Len;
        this.str1Len = ((Number) (str1().length())).intValue();
        return this.str1Len;
    }
    public void _invalidateStr1Len() { this.str1Len = null; }
    private int lenOf1;
    private String str1;
    private Expr1 _root;
    private KaitaiStruct.ReadWrite _parent;
    public int lenOf1() { return lenOf1; }
    public void setLenOf1(int _v) { _dirty = true; lenOf1 = _v; }
    public String str1() { return str1; }
    public void setStr1(String _v) { _dirty = true; str1 = _v; }
    public Expr1 _root() { return _root; }
    public void set_root(Expr1 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
