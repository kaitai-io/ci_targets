// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class ExprIoPos extends KaitaiStruct {
    public static ExprIoPos fromFile(String fileName) throws IOException {
        return new ExprIoPos(new KaitaiStream(fileName));
    }

    public ExprIoPos(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public ExprIoPos(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public ExprIoPos(KaitaiStream _io, KaitaiStruct _parent, ExprIoPos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this._raw_substream1 = this._io.readBytes(16);
        KaitaiStream _io__raw_substream1 = new KaitaiStream(_raw_substream1);
        this.substream1 = new AllPlusNumber(_io__raw_substream1, this, _root);
        this._raw_substream2 = this._io.readBytes(14);
        KaitaiStream _io__raw_substream2 = new KaitaiStream(_raw_substream2);
        this.substream2 = new AllPlusNumber(_io__raw_substream2, this, _root);
    }
    public static class AllPlusNumber extends KaitaiStruct {
        public static AllPlusNumber fromFile(String fileName) throws IOException {
            return new AllPlusNumber(new KaitaiStream(fileName));
        }

        public AllPlusNumber(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public AllPlusNumber(KaitaiStream _io, ExprIoPos _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public AllPlusNumber(KaitaiStream _io, ExprIoPos _parent, ExprIoPos _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.myStr = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("UTF-8"));
            this.body = this._io.readBytes(((_io().size() - _io().pos()) - 2));
            this.number = this._io.readU2le();
        }
        private String myStr;
        private byte[] body;
        private int number;
        private ExprIoPos _root;
        private ExprIoPos _parent;
        public String myStr() { return myStr; }
        public byte[] body() { return body; }
        public int number() { return number; }
        public ExprIoPos _root() { return _root; }
        public ExprIoPos _parent() { return _parent; }
    }
    private AllPlusNumber substream1;
    private AllPlusNumber substream2;
    private ExprIoPos _root;
    private KaitaiStruct _parent;
    private byte[] _raw_substream1;
    private byte[] _raw_substream2;
    public AllPlusNumber substream1() { return substream1; }
    public AllPlusNumber substream2() { return substream2; }
    public ExprIoPos _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_substream1() { return _raw_substream1; }
    public byte[] _raw_substream2() { return _raw_substream2; }
}
