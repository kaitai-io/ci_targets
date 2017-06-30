// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class StrEncodingsDefault extends KaitaiStruct {
    public static StrEncodingsDefault fromFile(String fileName) throws IOException {
        return new StrEncodingsDefault(new KaitaiStream(fileName));
    }

    public StrEncodingsDefault(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodingsDefault(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrEncodingsDefault(KaitaiStream _io, KaitaiStruct _parent, StrEncodingsDefault _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1()), Charset.forName("UTF-8"));
        this.rest = new Subtype(this._io, this, _root);
    }
    public static class Subtype extends KaitaiStruct {
        public static Subtype fromFile(String fileName) throws IOException {
            return new Subtype(new KaitaiStream(fileName));
        }

        public Subtype(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Subtype(KaitaiStream _io, StrEncodingsDefault _parent) {
            this(_io, _parent, null);
        }

        public Subtype(KaitaiStream _io, StrEncodingsDefault _parent, StrEncodingsDefault _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.lenOf2 = this._io.readU2le();
            this.str2 = new String(this._io.readBytes(lenOf2()), Charset.forName("UTF-8"));
            this.lenOf3 = this._io.readU2le();
            this.str3 = new String(this._io.readBytes(lenOf3()), Charset.forName("SJIS"));
            this.lenOf4 = this._io.readU2le();
            this.str4 = new String(this._io.readBytes(lenOf4()), Charset.forName("CP437"));
        }
        private int lenOf2;
        private String str2;
        private int lenOf3;
        private String str3;
        private int lenOf4;
        private String str4;
        private StrEncodingsDefault _root;
        private StrEncodingsDefault _parent;
        public int lenOf2() { return lenOf2; }
        public String str2() { return str2; }
        public int lenOf3() { return lenOf3; }
        public String str3() { return str3; }
        public int lenOf4() { return lenOf4; }
        public String str4() { return str4; }
        public StrEncodingsDefault _root() { return _root; }
        public StrEncodingsDefault _parent() { return _parent; }
    }
    private int lenOf1;
    private String str1;
    private Subtype rest;
    private StrEncodingsDefault _root;
    private KaitaiStruct _parent;
    public int lenOf1() { return lenOf1; }
    public String str1() { return str1; }
    public Subtype rest() { return rest; }
    public StrEncodingsDefault _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
