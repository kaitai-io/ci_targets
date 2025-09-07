// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.nio.charset.Charset;

public class StrEncodingsEscapingToS extends KaitaiStruct.ReadWrite {
    public static StrEncodingsEscapingToS fromFile(String fileName) throws IOException {
        return new StrEncodingsEscapingToS(new ByteBufferKaitaiStream(fileName));
    }
    public StrEncodingsEscapingToS() {
        this(null, null, null);
    }

    public StrEncodingsEscapingToS(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodingsEscapingToS(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrEncodingsEscapingToS(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrEncodingsEscapingToS _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1Raw = this._io.readBytes(lenOf1());
        this.lenOf2 = this._io.readU2le();
        this.str2Raw = this._io.readBytes(lenOf2());
        this.lenOf3 = this._io.readU2le();
        this.str3Raw = this._io.readBytes(lenOf3());
        this.lenOf4 = this._io.readU2le();
        this.str4Raw = this._io.readBytes(lenOf4());
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU2le(this.lenOf1);
        this._io.writeBytes(this.str1Raw);
        this._io.writeU2le(this.lenOf2);
        this._io.writeBytes(this.str2Raw);
        this._io.writeU2le(this.lenOf3);
        this._io.writeBytes(this.str3Raw);
        this._io.writeU2le(this.lenOf4);
        this._io.writeBytes(this.str4Raw);
    }

    public void _check() {
        if (this.str1Raw.length != lenOf1())
            throw new ConsistencyError("str1_raw", lenOf1(), this.str1Raw.length);
        if (this.str2Raw.length != lenOf2())
            throw new ConsistencyError("str2_raw", lenOf2(), this.str2Raw.length);
        if (this.str3Raw.length != lenOf3())
            throw new ConsistencyError("str3_raw", lenOf3(), this.str3Raw.length);
        if (this.str4Raw.length != lenOf4())
            throw new ConsistencyError("str4_raw", lenOf4(), this.str4Raw.length);
        _dirty = false;
    }
    private String str1;
    public String str1() {
        if (this.str1 != null)
            return this.str1;
        this.str1 = new String(str1Raw(), Charset.forName("ASCII\\\\x"));
        return this.str1;
    }
    public void _invalidateStr1() { this.str1 = null; }
    private String str2;
    public String str2() {
        if (this.str2 != null)
            return this.str2;
        this.str2 = new String(str2Raw(), Charset.forName("UTF-8\\'x"));
        return this.str2;
    }
    public void _invalidateStr2() { this.str2 = null; }
    private String str3;
    public String str3() {
        if (this.str3 != null)
            return this.str3;
        this.str3 = new String(str3Raw(), Charset.forName("SJIS\\\"x"));
        return this.str3;
    }
    public void _invalidateStr3() { this.str3 = null; }
    private String str4;
    public String str4() {
        if (this.str4 != null)
            return this.str4;
        this.str4 = new String(str4Raw(), Charset.forName("IBM437\\nx"));
        return this.str4;
    }
    public void _invalidateStr4() { this.str4 = null; }
    private int lenOf1;
    private byte[] str1Raw;
    private int lenOf2;
    private byte[] str2Raw;
    private int lenOf3;
    private byte[] str3Raw;
    private int lenOf4;
    private byte[] str4Raw;
    private StrEncodingsEscapingToS _root;
    private KaitaiStruct.ReadWrite _parent;
    public int lenOf1() { return lenOf1; }
    public void setLenOf1(int _v) { _dirty = true; lenOf1 = _v; }
    public byte[] str1Raw() { return str1Raw; }
    public void setStr1Raw(byte[] _v) { _dirty = true; str1Raw = _v; }
    public int lenOf2() { return lenOf2; }
    public void setLenOf2(int _v) { _dirty = true; lenOf2 = _v; }
    public byte[] str2Raw() { return str2Raw; }
    public void setStr2Raw(byte[] _v) { _dirty = true; str2Raw = _v; }
    public int lenOf3() { return lenOf3; }
    public void setLenOf3(int _v) { _dirty = true; lenOf3 = _v; }
    public byte[] str3Raw() { return str3Raw; }
    public void setStr3Raw(byte[] _v) { _dirty = true; str3Raw = _v; }
    public int lenOf4() { return lenOf4; }
    public void setLenOf4(int _v) { _dirty = true; lenOf4 = _v; }
    public byte[] str4Raw() { return str4Raw; }
    public void setStr4Raw(byte[] _v) { _dirty = true; str4Raw = _v; }
    public StrEncodingsEscapingToS _root() { return _root; }
    public void set_root(StrEncodingsEscapingToS _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
