// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class TypeTernary2ndFalsy extends KaitaiStruct.ReadWrite {
    public static TypeTernary2ndFalsy fromFile(String fileName) throws IOException {
        return new TypeTernary2ndFalsy(new ByteBufferKaitaiStream(fileName));
    }
    public TypeTernary2ndFalsy() {
        this(null, null, null);
    }

    public TypeTernary2ndFalsy(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TypeTernary2ndFalsy(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TypeTernary2ndFalsy(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TypeTernary2ndFalsy _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.intTruthy = this._io.readU1();
        this.ut = new Foo(this._io, this, _root);
        this.ut._read();
        this.intArray = new ArrayList<Integer>();
        for (int i = 0; i < 2; i++) {
            this.intArray.add(this._io.readU1());
        }
        this.intArrayEmpty = new ArrayList<Integer>();
        for (int i = 0; i < 0; i++) {
            this.intArrayEmpty.add(this._io.readU1());
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        this.ut._fetchInstances();
        for (int i = 0; i < this.intArray.size(); i++) {
        }
        for (int i = 0; i < this.intArrayEmpty.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.intTruthy);
        this.ut._write_Seq(this._io);
        for (int i = 0; i < this.intArray.size(); i++) {
            this._io.writeU1(this.intArray.get(((Number) (i)).intValue()));
        }
        for (int i = 0; i < this.intArrayEmpty.size(); i++) {
            this._io.writeU1(this.intArrayEmpty.get(((Number) (i)).intValue()));
        }
    }

    public void _check() {
        if (!Objects.equals(this.ut._root(), _root()))
            throw new ConsistencyError("ut", this.ut._root(), _root());
        if (!Objects.equals(this.ut._parent(), this))
            throw new ConsistencyError("ut", this.ut._parent(), this);
        if (this.intArray.size() != 2)
            throw new ConsistencyError("int_array", this.intArray.size(), 2);
        for (int i = 0; i < this.intArray.size(); i++) {
        }
        if (this.intArrayEmpty.size() != 0)
            throw new ConsistencyError("int_array_empty", this.intArrayEmpty.size(), 0);
        for (int i = 0; i < this.intArrayEmpty.size(); i++) {
        }
        _dirty = false;
    }
    public static class Foo extends KaitaiStruct.ReadWrite {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }
        public Foo() {
            this(null, null, null);
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
        }
        public void _read() {
            this.m = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.m);
        }

        public void _check() {
            _dirty = false;
        }
        private int m;
        private TypeTernary2ndFalsy _root;
        private TypeTernary2ndFalsy _parent;
        public int m() { return m; }
        public void setM(int _v) { _dirty = true; m = _v; }
        public TypeTernary2ndFalsy _root() { return _root; }
        public void set_root(TypeTernary2ndFalsy _v) { _dirty = true; _root = _v; }
        public TypeTernary2ndFalsy _parent() { return _parent; }
        public void set_parent(TypeTernary2ndFalsy _v) { _dirty = true; _parent = _v; }
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
    public void _invalidateNullUt() { this.nullUt = null; }
    private Boolean t;
    public Boolean t() {
        if (this.t != null)
            return this.t;
        this.t = true;
        return this.t;
    }
    public void _invalidateT() { this.t = null; }
    private Boolean vFalse;
    public Boolean vFalse() {
        if (this.vFalse != null)
            return this.vFalse;
        this.vFalse = (t() ? false : true);
        return this.vFalse;
    }
    public void _invalidateVFalse() { this.vFalse = null; }
    private Double vFloatNegZero;
    public Double vFloatNegZero() {
        if (this.vFloatNegZero != null)
            return this.vFloatNegZero;
        this.vFloatNegZero = ((Number) ((t() ? -0.0 : -2.72))).doubleValue();
        return this.vFloatNegZero;
    }
    public void _invalidateVFloatNegZero() { this.vFloatNegZero = null; }
    private Double vFloatZero;
    public Double vFloatZero() {
        if (this.vFloatZero != null)
            return this.vFloatZero;
        this.vFloatZero = ((Number) ((t() ? 0.0 : 3.14))).doubleValue();
        return this.vFloatZero;
    }
    public void _invalidateVFloatZero() { this.vFloatZero = null; }
    private List<Integer> vIntArrayEmpty;
    public List<Integer> vIntArrayEmpty() {
        if (this.vIntArrayEmpty != null)
            return this.vIntArrayEmpty;
        this.vIntArrayEmpty = (t() ? intArrayEmpty() : intArray());
        return this.vIntArrayEmpty;
    }
    public void _invalidateVIntArrayEmpty() { this.vIntArrayEmpty = null; }
    private Integer vIntNegZero;
    public Integer vIntNegZero() {
        if (this.vIntNegZero != null)
            return this.vIntNegZero;
        this.vIntNegZero = ((Number) ((t() ? 0 : -20))).intValue();
        return this.vIntNegZero;
    }
    public void _invalidateVIntNegZero() { this.vIntNegZero = null; }
    private Byte vIntZero;
    public Byte vIntZero() {
        if (this.vIntZero != null)
            return this.vIntZero;
        this.vIntZero = ((Number) ((t() ? 0 : 10))).byteValue();
        return this.vIntZero;
    }
    public void _invalidateVIntZero() { this.vIntZero = null; }
    private Foo vNullUt;
    public Foo vNullUt() {
        if (this.vNullUt != null)
            return this.vNullUt;
        this.vNullUt = (t() ? nullUt() : ut());
        return this.vNullUt;
    }
    public void _invalidateVNullUt() { this.vNullUt = null; }
    private String vStrEmpty;
    public String vStrEmpty() {
        if (this.vStrEmpty != null)
            return this.vStrEmpty;
        this.vStrEmpty = (t() ? "" : "kaitai");
        return this.vStrEmpty;
    }
    public void _invalidateVStrEmpty() { this.vStrEmpty = null; }
    private String vStrWZero;
    public String vStrWZero() {
        if (this.vStrWZero != null)
            return this.vStrWZero;
        this.vStrWZero = (t() ? "0" : "30");
        return this.vStrWZero;
    }
    public void _invalidateVStrWZero() { this.vStrWZero = null; }
    private int intTruthy;
    private Foo ut;
    private List<Integer> intArray;
    private List<Integer> intArrayEmpty;
    private TypeTernary2ndFalsy _root;
    private KaitaiStruct.ReadWrite _parent;
    public int intTruthy() { return intTruthy; }
    public void setIntTruthy(int _v) { _dirty = true; intTruthy = _v; }
    public Foo ut() { return ut; }
    public void setUt(Foo _v) { _dirty = true; ut = _v; }
    public List<Integer> intArray() { return intArray; }
    public void setIntArray(List<Integer> _v) { _dirty = true; intArray = _v; }
    public List<Integer> intArrayEmpty() { return intArrayEmpty; }
    public void setIntArrayEmpty(List<Integer> _v) { _dirty = true; intArrayEmpty = _v; }
    public TypeTernary2ndFalsy _root() { return _root; }
    public void set_root(TypeTernary2ndFalsy _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
