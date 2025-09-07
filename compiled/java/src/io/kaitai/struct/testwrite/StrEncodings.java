// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class StrEncodings extends KaitaiStruct.ReadWrite {
    public static StrEncodings fromFile(String fileName) throws IOException {
        return new StrEncodings(new ByteBufferKaitaiStream(fileName));
    }
    public StrEncodings() {
        this(null, null, null);
    }

    public StrEncodings(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodings(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrEncodings(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrEncodings _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1()), StandardCharsets.US_ASCII);
        this.lenOf2 = this._io.readU2le();
        this.str2 = new String(this._io.readBytes(lenOf2()), StandardCharsets.UTF_8);
        this.lenOf3 = this._io.readU2le();
        this.str3 = new String(this._io.readBytes(lenOf3()), Charset.forName("Shift_JIS"));
        this.lenOf4 = this._io.readU2le();
        this.str4 = new String(this._io.readBytes(lenOf4()), Charset.forName("IBM437"));
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
            throw new ConsistencyError("str1", lenOf1(), (this.str1).getBytes(Charset.forName("ASCII")).length);
        if ((this.str2).getBytes(Charset.forName("UTF-8")).length != lenOf2())
            throw new ConsistencyError("str2", lenOf2(), (this.str2).getBytes(Charset.forName("UTF-8")).length);
        if ((this.str3).getBytes(Charset.forName("Shift_JIS")).length != lenOf3())
            throw new ConsistencyError("str3", lenOf3(), (this.str3).getBytes(Charset.forName("Shift_JIS")).length);
        if ((this.str4).getBytes(Charset.forName("IBM437")).length != lenOf4())
            throw new ConsistencyError("str4", lenOf4(), (this.str4).getBytes(Charset.forName("IBM437")).length);
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
    private StrEncodings _root;
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
    public StrEncodings _root() { return _root; }
    public void set_root(StrEncodings _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
