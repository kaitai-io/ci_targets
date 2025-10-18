// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class StrEncodingsEscapingToS extends KaitaiStruct {
    public static StrEncodingsEscapingToS fromFile(String fileName) throws IOException {
        return new StrEncodingsEscapingToS(new ByteBufferKaitaiStream(fileName));
    }

    public StrEncodingsEscapingToS(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodingsEscapingToS(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrEncodingsEscapingToS(KaitaiStream _io, KaitaiStruct _parent, StrEncodingsEscapingToS _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1Raw = this._io.readBytes(lenOf1());
        this.lenOf2 = this._io.readU2le();
        this.str2Raw = this._io.readBytes(lenOf2());
        this.lenOf3 = this._io.readU2le();
        this.str3Raw = this._io.readBytes(lenOf3());
        this.lenOf4 = this._io.readU2le();
        this.str4Raw = this._io.readBytes(lenOf4());
    }

    public void _fetchInstances() {
    }
    public String str1() {
        if (this.str1 != null)
            return this.str1;
        this.str1 = new String(str1Raw(), Charset.forName("ASCII\\\\x"));
        return this.str1;
    }
    public String str2() {
        if (this.str2 != null)
            return this.str2;
        this.str2 = new String(str2Raw(), Charset.forName("UTF-8\\'x"));
        return this.str2;
    }
    public String str3() {
        if (this.str3 != null)
            return this.str3;
        this.str3 = new String(str3Raw(), Charset.forName("SJIS\\\"x"));
        return this.str3;
    }
    public String str4() {
        if (this.str4 != null)
            return this.str4;
        this.str4 = new String(str4Raw(), Charset.forName("IBM437\\nx"));
        return this.str4;
    }
    public int lenOf1() { return lenOf1; }
    public byte[] str1Raw() { return str1Raw; }
    public int lenOf2() { return lenOf2; }
    public byte[] str2Raw() { return str2Raw; }
    public int lenOf3() { return lenOf3; }
    public byte[] str3Raw() { return str3Raw; }
    public int lenOf4() { return lenOf4; }
    public byte[] str4Raw() { return str4Raw; }
    public StrEncodingsEscapingToS _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private String str1;
    private String str2;
    private String str3;
    private String str4;
    private int lenOf1;
    private byte[] str1Raw;
    private int lenOf2;
    private byte[] str2Raw;
    private int lenOf3;
    private byte[] str3Raw;
    private int lenOf4;
    private byte[] str4Raw;
    private StrEncodingsEscapingToS _root;
    private KaitaiStruct _parent;
}
