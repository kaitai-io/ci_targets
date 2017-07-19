// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class StrEncodings extends KaitaiStruct {
    public static StrEncodings fromFile(String fileName) throws IOException {
        return new StrEncodings(new ByteBufferKaitaiStream(fileName));
    }

    public StrEncodings(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodings(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrEncodings(KaitaiStream _io, KaitaiStruct _parent, StrEncodings _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1()), Charset.forName("ASCII"));
        this.lenOf2 = this._io.readU2le();
        this.str2 = new String(this._io.readBytes(lenOf2()), Charset.forName("UTF-8"));
        this.lenOf3 = this._io.readU2le();
        this.str3 = new String(this._io.readBytes(lenOf3()), Charset.forName("SJIS"));
        this.lenOf4 = this._io.readU2le();
        this.str4 = new String(this._io.readBytes(lenOf4()), Charset.forName("CP437"));
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
    private KaitaiStruct _parent;
    public int lenOf1() { return lenOf1; }
    public String str1() { return str1; }
    public int lenOf2() { return lenOf2; }
    public String str2() { return str2; }
    public int lenOf3() { return lenOf3; }
    public String str3() { return str3; }
    public int lenOf4() { return lenOf4; }
    public String str4() { return str4; }
    public StrEncodings _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
