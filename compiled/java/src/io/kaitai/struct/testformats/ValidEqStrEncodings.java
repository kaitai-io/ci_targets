// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class ValidEqStrEncodings extends KaitaiStruct {
    public static ValidEqStrEncodings fromFile(String fileName) throws IOException {
        return new ValidEqStrEncodings(new ByteBufferKaitaiStream(fileName));
    }

    public ValidEqStrEncodings(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidEqStrEncodings(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidEqStrEncodings(KaitaiStream _io, KaitaiStruct _parent, ValidEqStrEncodings _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
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
    }

    public void _fetchInstances() {
    }
    public int lenOf1() { return lenOf1; }
    public String str1() { return str1; }
    public int lenOf2() { return lenOf2; }
    public String str2() { return str2; }
    public int lenOf3() { return lenOf3; }
    public String str3() { return str3; }
    public int lenOf4() { return lenOf4; }
    public String str4() { return str4; }
    public ValidEqStrEncodings _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private int lenOf1;
    private String str1;
    private int lenOf2;
    private String str2;
    private int lenOf3;
    private String str3;
    private int lenOf4;
    private String str4;
    private ValidEqStrEncodings _root;
    private KaitaiStruct _parent;
}
