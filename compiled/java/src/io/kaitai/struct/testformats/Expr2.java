// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class Expr2 extends KaitaiStruct {
    public static Expr2 fromFile(String fileName) throws IOException {
        return new Expr2(new ByteBufferKaitaiStream(fileName));
    }

    public Expr2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Expr2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Expr2(KaitaiStream _io, KaitaiStruct _parent, Expr2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.str1 = new ModStr(this._io, this, _root);
        this.str2 = new ModStr(this._io, this, _root);
    }
    public static class ModStr extends KaitaiStruct {
        public static ModStr fromFile(String fileName) throws IOException {
            return new ModStr(new ByteBufferKaitaiStream(fileName));
        }

        public ModStr(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ModStr(KaitaiStream _io, Expr2 _parent) {
            this(_io, _parent, null);
        }

        public ModStr(KaitaiStream _io, Expr2 _parent, Expr2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.lenOrig = this._io.readU2le();
            this.str = new String(this._io.readBytes(lenMod()), StandardCharsets.UTF_8);
            KaitaiStream _io_rest = this._io.substream(3);
            this.rest = new Tuple(_io_rest, this, _root);
        }
        private Integer lenMod;
        public Integer lenMod() {
            if (this.lenMod != null)
                return this.lenMod;
            int _tmp = (int) ((lenOrig() - 3));
            this.lenMod = _tmp;
            return this.lenMod;
        }
        private String char5;
        public String char5() {
            if (this.char5 != null)
                return this.char5;
            long _pos = this._io.pos();
            this._io.seek(5);
            this.char5 = new String(this._io.readBytes(1), StandardCharsets.US_ASCII);
            this._io.seek(_pos);
            return this.char5;
        }
        private Tuple tuple5;
        public Tuple tuple5() {
            if (this.tuple5 != null)
                return this.tuple5;
            long _pos = this._io.pos();
            this._io.seek(5);
            this.tuple5 = new Tuple(this._io, this, _root);
            this._io.seek(_pos);
            return this.tuple5;
        }
        private int lenOrig;
        private String str;
        private Tuple rest;
        private Expr2 _root;
        private Expr2 _parent;
        public int lenOrig() { return lenOrig; }
        public String str() { return str; }
        public Tuple rest() { return rest; }
        public Expr2 _root() { return _root; }
        public Expr2 _parent() { return _parent; }
    }
    public static class Tuple extends KaitaiStruct {
        public static Tuple fromFile(String fileName) throws IOException {
            return new Tuple(new ByteBufferKaitaiStream(fileName));
        }

        public Tuple(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Tuple(KaitaiStream _io, Expr2.ModStr _parent) {
            this(_io, _parent, null);
        }

        public Tuple(KaitaiStream _io, Expr2.ModStr _parent, Expr2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.byte0 = this._io.readU1();
            this.byte1 = this._io.readU1();
            this.byte2 = this._io.readU1();
        }
        private Integer avg;
        public Integer avg() {
            if (this.avg != null)
                return this.avg;
            int _tmp = (int) (((byte1() + byte2()) / 2));
            this.avg = _tmp;
            return this.avg;
        }
        private int byte0;
        private int byte1;
        private int byte2;
        private Expr2 _root;
        private Expr2.ModStr _parent;
        public int byte0() { return byte0; }
        public int byte1() { return byte1; }
        public int byte2() { return byte2; }
        public Expr2 _root() { return _root; }
        public Expr2.ModStr _parent() { return _parent; }
    }
    private Integer str1Avg;
    public Integer str1Avg() {
        if (this.str1Avg != null)
            return this.str1Avg;
        int _tmp = (int) (str1().rest().avg());
        this.str1Avg = _tmp;
        return this.str1Avg;
    }
    private String str1Char5;
    public String str1Char5() {
        if (this.str1Char5 != null)
            return this.str1Char5;
        this.str1Char5 = str1().char5();
        return this.str1Char5;
    }
    private Integer str1Len;
    public Integer str1Len() {
        if (this.str1Len != null)
            return this.str1Len;
        int _tmp = (int) (str1().str().length());
        this.str1Len = _tmp;
        return this.str1Len;
    }
    private Integer str1LenMod;
    public Integer str1LenMod() {
        if (this.str1LenMod != null)
            return this.str1LenMod;
        int _tmp = (int) (str1().lenMod());
        this.str1LenMod = _tmp;
        return this.str1LenMod;
    }
    private Tuple str1Tuple5;
    public Tuple str1Tuple5() {
        if (this.str1Tuple5 != null)
            return this.str1Tuple5;
        this.str1Tuple5 = str1().tuple5();
        return this.str1Tuple5;
    }
    private Integer str1Byte1;
    public Integer str1Byte1() {
        if (this.str1Byte1 != null)
            return this.str1Byte1;
        int _tmp = (int) (str1().rest().byte1());
        this.str1Byte1 = _tmp;
        return this.str1Byte1;
    }
    private Tuple str2Tuple5;
    public Tuple str2Tuple5() {
        if (this.str2Tuple5 != null)
            return this.str2Tuple5;
        this.str2Tuple5 = str2().tuple5();
        return this.str2Tuple5;
    }
    private ModStr str1;
    private ModStr str2;
    private Expr2 _root;
    private KaitaiStruct _parent;
    public ModStr str1() { return str1; }
    public ModStr str2() { return str2; }
    public Expr2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
