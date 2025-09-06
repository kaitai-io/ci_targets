// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class ValidEqStrEncodings extends KaitaiStruct.ReadWrite {
    public static ValidEqStrEncodings fromFile(String fileName) throws IOException {
        return new ValidEqStrEncodings(new ByteBufferKaitaiStream(fileName));
    }
    public ValidEqStrEncodings() {
        this(null, null, null);
    }

    public ValidEqStrEncodings(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidEqStrEncodings(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidEqStrEncodings(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidEqStrEncodings _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1()), StandardCharsets.US_ASCII);
        if (!(this.str1.equals("Some ASCII"))) {
            throw new KaitaiStream.ValidationNotEqualError("Some ASCII", this.str1, this._io, "/seq/1");
        }
        this.lenOf2 = this._io.readU2le();
        this.str2 = new String(this._io.readBytes(lenOf2()), StandardCharsets.UTF_8);
        if (!(this.str2.equals("\u3053\u3093\u306b\u3061\u306f"))) {
            throw new KaitaiStream.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", this.str2, this._io, "/seq/3");
        }
        this.lenOf3 = this._io.readU2le();
        this.str3 = new String(this._io.readBytes(lenOf3()), Charset.forName("Shift_JIS"));
        if (!(this.str3.equals("\u3053\u3093\u306b\u3061\u306f"))) {
            throw new KaitaiStream.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", this.str3, this._io, "/seq/5");
        }
        this.lenOf4 = this._io.readU2le();
        this.str4 = new String(this._io.readBytes(lenOf4()), Charset.forName("IBM437"));
        if (!(this.str4.equals("\u2591\u2592\u2593"))) {
            throw new KaitaiStream.ValidationNotEqualError("\u2591\u2592\u2593", this.str4, this._io, "/seq/7");
        }
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU2le(this.lenOf1);
        this._io.writeBytes((this.str1).getBytes(Charset.forName("ASCII")));
        this._io.writeU2le(this.lenOf2);
        this._io.writeBytes((this.str2).getBytes(Charset.forName("UTF-8")));
        this._io.writeU2le(this.lenOf3);
        this._io.writeBytes((this.str3).getBytes(Charset.forName("Shift_JIS")));
        this._io.writeU2le(this.lenOf4);
        this._io.writeBytes((this.str4).getBytes(Charset.forName("IBM437")));
    }

    public void _check() {
        if ((this.str1).getBytes(Charset.forName("ASCII")).length != lenOf1())
            throw new ConsistencyError("str1", (this.str1).getBytes(Charset.forName("ASCII")).length, lenOf1());
        if (!(this.str1.equals("Some ASCII"))) {
            throw new KaitaiStream.ValidationNotEqualError("Some ASCII", this.str1, null, "/seq/1");
        }
        if ((this.str2).getBytes(Charset.forName("UTF-8")).length != lenOf2())
            throw new ConsistencyError("str2", (this.str2).getBytes(Charset.forName("UTF-8")).length, lenOf2());
        if (!(this.str2.equals("\u3053\u3093\u306b\u3061\u306f"))) {
            throw new KaitaiStream.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", this.str2, null, "/seq/3");
        }
        if ((this.str3).getBytes(Charset.forName("Shift_JIS")).length != lenOf3())
            throw new ConsistencyError("str3", (this.str3).getBytes(Charset.forName("Shift_JIS")).length, lenOf3());
        if (!(this.str3.equals("\u3053\u3093\u306b\u3061\u306f"))) {
            throw new KaitaiStream.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", this.str3, null, "/seq/5");
        }
        if ((this.str4).getBytes(Charset.forName("IBM437")).length != lenOf4())
            throw new ConsistencyError("str4", (this.str4).getBytes(Charset.forName("IBM437")).length, lenOf4());
        if (!(this.str4.equals("\u2591\u2592\u2593"))) {
            throw new KaitaiStream.ValidationNotEqualError("\u2591\u2592\u2593", this.str4, null, "/seq/7");
        }
        _dirty = false;
    }
    private int lenOf1;
    private String str1;
    private int lenOf2;
    private String str2;
    private int lenOf3;
    private String str3;
    private int lenOf4;
    private String str4;
    private ValidEqStrEncodings _root;
    private KaitaiStruct.ReadWrite _parent;
    public int lenOf1() { return lenOf1; }
    public void setLenOf1(int _v) { _dirty = true; lenOf1 = _v; }
    public String str1() { return str1; }
    public void setStr1(String _v) { _dirty = true; str1 = _v; }
    public int lenOf2() { return lenOf2; }
    public void setLenOf2(int _v) { _dirty = true; lenOf2 = _v; }
    public String str2() { return str2; }
    public void setStr2(String _v) { _dirty = true; str2 = _v; }
    public int lenOf3() { return lenOf3; }
    public void setLenOf3(int _v) { _dirty = true; lenOf3 = _v; }
    public String str3() { return str3; }
    public void setStr3(String _v) { _dirty = true; str3 = _v; }
    public int lenOf4() { return lenOf4; }
    public void setLenOf4(int _v) { _dirty = true; lenOf4 = _v; }
    public String str4() { return str4; }
    public void setStr4(String _v) { _dirty = true; str4 = _v; }
    public ValidEqStrEncodings _root() { return _root; }
    public void set_root(ValidEqStrEncodings _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
