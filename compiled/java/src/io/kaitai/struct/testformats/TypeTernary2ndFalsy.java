// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

    public void _fetchInstances() {
        this.ut._fetchInstances();
        for (int i = 0; i < this.intArray.size(); i++) {
        }
        for (int i = 0; i < this.intArrayEmpty.size(); i++) {
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

        public void _fetchInstances() {
        }
        public int m() { return m; }
        public TypeTernary2ndFalsy _root() { return _root; }
        public TypeTernary2ndFalsy _parent() { return _parent; }
        private int m;
        private TypeTernary2ndFalsy _root;
        private TypeTernary2ndFalsy _parent;
    }
    public Foo nullUt() {
        if (this.nullUt != null)
            return this.nullUt;
        if (false) {
            this.nullUt = ut();
        }
        return this.nullUt;
    }
    public Boolean t() {
        if (this.t != null)
            return this.t;
        this.t = true;
        return this.t;
    }
    public Boolean vFalse() {
        if (this.vFalse != null)
            return this.vFalse;
        this.vFalse = (t() ? false : true);
        return this.vFalse;
    }
    public Double vFloatNegZero() {
        if (this.vFloatNegZero != null)
            return this.vFloatNegZero;
        this.vFloatNegZero = ((Number) ((t() ? -0.0 : -2.72))).doubleValue();
        return this.vFloatNegZero;
    }
    public Double vFloatZero() {
        if (this.vFloatZero != null)
            return this.vFloatZero;
        this.vFloatZero = ((Number) ((t() ? 0.0 : 3.14))).doubleValue();
        return this.vFloatZero;
    }
    public List<Integer> vIntArrayEmpty() {
        if (this.vIntArrayEmpty != null)
            return this.vIntArrayEmpty;
        this.vIntArrayEmpty = (t() ? intArrayEmpty() : intArray());
        return this.vIntArrayEmpty;
    }
    public Integer vIntNegZero() {
        if (this.vIntNegZero != null)
            return this.vIntNegZero;
        this.vIntNegZero = ((Number) ((t() ? 0 : -20))).intValue();
        return this.vIntNegZero;
    }
    public Byte vIntZero() {
        if (this.vIntZero != null)
            return this.vIntZero;
        this.vIntZero = ((Number) ((t() ? 0 : 10))).byteValue();
        return this.vIntZero;
    }
    public Foo vNullUt() {
        if (this.vNullUt != null)
            return this.vNullUt;
        this.vNullUt = (t() ? nullUt() : ut());
        return this.vNullUt;
    }
    public String vStrEmpty() {
        if (this.vStrEmpty != null)
            return this.vStrEmpty;
        this.vStrEmpty = (t() ? "" : "kaitai");
        return this.vStrEmpty;
    }
    public String vStrWZero() {
        if (this.vStrWZero != null)
            return this.vStrWZero;
        this.vStrWZero = (t() ? "0" : "30");
        return this.vStrWZero;
    }
    public int intTruthy() { return intTruthy; }
    public Foo ut() { return ut; }
    public List<Integer> intArray() { return intArray; }
    public List<Integer> intArrayEmpty() { return intArrayEmpty; }
    public TypeTernary2ndFalsy _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Foo nullUt;
    private Boolean t;
    private Boolean vFalse;
    private Double vFloatNegZero;
    private Double vFloatZero;
    private List<Integer> vIntArrayEmpty;
    private Integer vIntNegZero;
    private Byte vIntZero;
    private Foo vNullUt;
    private String vStrEmpty;
    private String vStrWZero;
    private int intTruthy;
    private Foo ut;
    private List<Integer> intArray;
    private List<Integer> intArrayEmpty;
    private TypeTernary2ndFalsy _root;
    private KaitaiStruct _parent;
}
