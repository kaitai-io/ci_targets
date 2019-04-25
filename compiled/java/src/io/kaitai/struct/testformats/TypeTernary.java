// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class TypeTernary extends KaitaiStruct {
    public static TypeTernary fromFile(String fileName) throws IOException {
        return new TypeTernary(new ByteBufferKaitaiStream(fileName));
    }

    public TypeTernary(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TypeTernary(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TypeTernary(KaitaiStream _io, KaitaiStruct _parent, TypeTernary _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        if (!(isHack())) {
            this._raw_difWoHack = this._io.readBytes(1);
            KaitaiStream _io__raw_difWoHack = new ByteBufferKaitaiStream(_raw_difWoHack);
            this.difWoHack = new Dummy(_io__raw_difWoHack, this, _root);
        }
        this._raw__raw_difWithHack = this._io.readBytes(1);
        this._raw_difWithHack = KaitaiStream.processXor(this._raw__raw_difWithHack, 3);
        KaitaiStream _io__raw_difWithHack = new ByteBufferKaitaiStream(_raw_difWithHack);
        this.difWithHack = new Dummy(_io__raw_difWithHack, this, _root);
    }
    public static class Dummy extends KaitaiStruct {
        public static Dummy fromFile(String fileName) throws IOException {
            return new Dummy(new ByteBufferKaitaiStream(fileName));
        }

        public Dummy(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Dummy(KaitaiStream _io, TypeTernary _parent) {
            this(_io, _parent, null);
        }

        public Dummy(KaitaiStream _io, TypeTernary _parent, TypeTernary _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readU1();
        }
        private int value;
        private TypeTernary _root;
        private TypeTernary _parent;
        public int value() { return value; }
        public TypeTernary _root() { return _root; }
        public TypeTernary _parent() { return _parent; }
    }
    private Boolean isHack;
    public Boolean isHack() {
        if (this.isHack != null)
            return this.isHack;
        boolean _tmp = (boolean) (true);
        this.isHack = _tmp;
        return this.isHack;
    }
    private Dummy dif;
    public Dummy dif() {
        if (this.dif != null)
            return this.dif;
        this.dif = (!(isHack()) ? difWoHack() : difWithHack());
        return this.dif;
    }
    private Integer difValue;
    public Integer difValue() {
        if (this.difValue != null)
            return this.difValue;
        int _tmp = (int) (dif().value());
        this.difValue = _tmp;
        return this.difValue;
    }
    private Dummy difWoHack;
    private Dummy difWithHack;
    private TypeTernary _root;
    private KaitaiStruct _parent;
    private byte[] _raw_difWoHack;
    private byte[] _raw_difWithHack;
    private byte[] _raw__raw_difWithHack;
    public Dummy difWoHack() { return difWoHack; }
    public Dummy difWithHack() { return difWithHack; }
    public TypeTernary _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_difWoHack() { return _raw_difWoHack; }
    public byte[] _raw_difWithHack() { return _raw_difWithHack; }
    public byte[] _raw__raw_difWithHack() { return _raw__raw_difWithHack; }
}
