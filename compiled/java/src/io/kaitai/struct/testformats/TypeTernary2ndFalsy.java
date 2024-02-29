// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class TypeTernary2ndFalsy extends KaitaiStruct {
    public static TypeTernary2ndFalsy fromFile(String fileName) throws IOException {
        return new TypeTernary2ndFalsy(new ByteBufferKaitaiStream(fileName));
    }

    public TypeTernary2ndFalsy(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TypeTernary2ndFalsy(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TypeTernary2ndFalsy(KaitaiStream _io, KaitaiStruct _parent, TypeTernary2ndFalsy _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.intTruthy = this._io.readU1();
        this.ut = new Foo(this._io, this, _root);
        this.intArray = new ArrayList<Integer>();
        for (int i = 0; i < 2; i++) {
            this.intArray.add(this._io.readU1());
        }
        this.intArrayEmpty = new ArrayList<Integer>();
        for (int i = 0; i < 0; i++) {
            this.intArrayEmpty.add(this._io.readU1());
        }
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, TypeTernary2ndFalsy _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, TypeTernary2ndFalsy _parent, TypeTernary2ndFalsy _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.m = this._io.readU1();
        }
        private int m;
        private TypeTernary2ndFalsy _root;
        private TypeTernary2ndFalsy _parent;
        public int m() { return m; }
        public TypeTernary2ndFalsy _root() { return _root; }
        public TypeTernary2ndFalsy _parent() { return _parent; }
    }
    private Double vFloatNegZero;
    public Double vFloatNegZero() {
        if (this.vFloatNegZero != null)
            return this.vFloatNegZero;
        double _tmp = (double) ((t() ? -0.0 : -2.72));
        this.vFloatNegZero = _tmp;
        return this.vFloatNegZero;
    }
    private String vStrWZero;
    public String vStrWZero() {
        if (this.vStrWZero != null)
            return this.vStrWZero;
        this.vStrWZero = (t() ? "0" : "30");
        return this.vStrWZero;
    }
    private Double vFloatZero;
    public Double vFloatZero() {
        if (this.vFloatZero != null)
            return this.vFloatZero;
        double _tmp = (double) ((t() ? 0.0 : 3.14));
        this.vFloatZero = _tmp;
        return this.vFloatZero;
    }
    private Foo nullUt;
    public Foo nullUt() {
        if (this.nullUt != null)
            return this.nullUt;
        if (false) {
            this.nullUt = ut();
        }
        return this.nullUt;
    }
    private Boolean t;
    public Boolean t() {
        if (this.t != null)
            return this.t;
        boolean _tmp = (boolean) (true);
        this.t = _tmp;
        return this.t;
    }
    private Byte vIntZero;
    public Byte vIntZero() {
        if (this.vIntZero != null)
            return this.vIntZero;
        byte _tmp = (byte) ((t() ? 0 : 10));
        this.vIntZero = _tmp;
        return this.vIntZero;
    }
    private Boolean vFalse;
    public Boolean vFalse() {
        if (this.vFalse != null)
            return this.vFalse;
        boolean _tmp = (boolean) ((t() ? false : true));
        this.vFalse = _tmp;
        return this.vFalse;
    }
    private String vStrEmpty;
    public String vStrEmpty() {
        if (this.vStrEmpty != null)
            return this.vStrEmpty;
        this.vStrEmpty = (t() ? "" : "kaitai");
        return this.vStrEmpty;
    }
    private Integer vIntNegZero;
    public Integer vIntNegZero() {
        if (this.vIntNegZero != null)
            return this.vIntNegZero;
        int _tmp = (int) ((t() ? 0 : -20));
        this.vIntNegZero = _tmp;
        return this.vIntNegZero;
    }
    private ArrayList<Integer> vIntArrayEmpty;
    public ArrayList<Integer> vIntArrayEmpty() {
        if (this.vIntArrayEmpty != null)
            return this.vIntArrayEmpty;
        this.vIntArrayEmpty = (t() ? intArrayEmpty() : intArray());
        return this.vIntArrayEmpty;
    }
    private Foo vNullUt;
    public Foo vNullUt() {
        if (this.vNullUt != null)
            return this.vNullUt;
        this.vNullUt = (t() ? nullUt() : ut());
        return this.vNullUt;
    }
    private int intTruthy;
    private Foo ut;
    private ArrayList<Integer> intArray;
    private ArrayList<Integer> intArrayEmpty;
    private TypeTernary2ndFalsy _root;
    private KaitaiStruct _parent;
    public int intTruthy() { return intTruthy; }
    public Foo ut() { return ut; }
    public ArrayList<Integer> intArray() { return intArray; }
    public ArrayList<Integer> intArrayEmpty() { return intArrayEmpty; }
    public TypeTernary2ndFalsy _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
