// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;

public class ParamsPassArrayStruct extends KaitaiStruct.ReadWrite {
    public static ParamsPassArrayStruct fromFile(String fileName) throws IOException {
        return new ParamsPassArrayStruct(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassArrayStruct() {
        this(null, null, null);
    }

    public ParamsPassArrayStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassArrayStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = new Foo(this._io, this, _root);
        this.one._read();
        this.two = new Bar(this._io, this, _root);
        this.two._read();
        this.passStructs = new StructType(this._io, this, _root, oneTwo());
        this.passStructs._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
        this.two._fetchInstances();
        this.passStructs._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.one._write_Seq(this._io);
        this.two._write_Seq(this._io);
        this.passStructs._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.one._root(), _root()))
            throw new ConsistencyError("one", _root(), this.one._root());
        if (!Objects.equals(this.one._parent(), this))
            throw new ConsistencyError("one", this, this.one._parent());
        if (!Objects.equals(this.two._root(), _root()))
            throw new ConsistencyError("two", _root(), this.two._root());
        if (!Objects.equals(this.two._parent(), this))
            throw new ConsistencyError("two", this, this.two._parent());
        if (!Objects.equals(this.passStructs._root(), _root()))
            throw new ConsistencyError("pass_structs", _root(), this.passStructs._root());
        if (!Objects.equals(this.passStructs._parent(), this))
            throw new ConsistencyError("pass_structs", this, this.passStructs._parent());
        if (!Objects.equals(this.passStructs.structs(), oneTwo()))
            throw new ConsistencyError("pass_structs", oneTwo(), this.passStructs.structs());
        _dirty = false;
    }
    public static class Bar extends KaitaiStruct.ReadWrite {
        public static Bar fromFile(String fileName) throws IOException {
            return new Bar(new ByteBufferKaitaiStream(fileName));
        }
        public Bar() {
            this(null, null, null);
        }

        public Bar(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Bar(KaitaiStream _io, ParamsPassArrayStruct _parent) {
            this(_io, _parent, null);
        }

        public Bar(KaitaiStream _io, ParamsPassArrayStruct _parent, ParamsPassArrayStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.b = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.b);
        }

        public void _check() {
            _dirty = false;
        }
        public int b() { return b; }
        public void setB(int _v) { _dirty = true; b = _v; }
        public ParamsPassArrayStruct _root() { return _root; }
        public void set_root(ParamsPassArrayStruct _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayStruct _parent() { return _parent; }
        public void set_parent(ParamsPassArrayStruct _v) { _dirty = true; _parent = _v; }
        private int b;
        private ParamsPassArrayStruct _root;
        private ParamsPassArrayStruct _parent;
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

        public Foo(KaitaiStream _io, ParamsPassArrayStruct _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, ParamsPassArrayStruct _parent, ParamsPassArrayStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.f = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.f);
        }

        public void _check() {
            _dirty = false;
        }
        public int f() { return f; }
        public void setF(int _v) { _dirty = true; f = _v; }
        public ParamsPassArrayStruct _root() { return _root; }
        public void set_root(ParamsPassArrayStruct _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayStruct _parent() { return _parent; }
        public void set_parent(ParamsPassArrayStruct _v) { _dirty = true; _parent = _v; }
        private int f;
        private ParamsPassArrayStruct _root;
        private ParamsPassArrayStruct _parent;
    }
    public static class StructType extends KaitaiStruct.ReadWrite {
        public StructType(List<KaitaiStruct.ReadWrite> structs) {
            this(null, null, null, structs);
        }

        public StructType(KaitaiStream _io, List<KaitaiStruct.ReadWrite> structs) {
            this(_io, null, null, structs);
        }

        public StructType(KaitaiStream _io, ParamsPassArrayStruct _parent, List<KaitaiStruct.ReadWrite> structs) {
            this(_io, _parent, null, structs);
        }

        public StructType(KaitaiStream _io, ParamsPassArrayStruct _parent, ParamsPassArrayStruct _root, List<KaitaiStruct.ReadWrite> structs) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.structs = structs;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
        }

        public void _check() {
            _dirty = false;
        }
        public List<KaitaiStruct.ReadWrite> structs() { return structs; }
        public void setStructs(List<KaitaiStruct.ReadWrite> _v) { _dirty = true; structs = _v; }
        public ParamsPassArrayStruct _root() { return _root; }
        public void set_root(ParamsPassArrayStruct _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayStruct _parent() { return _parent; }
        public void set_parent(ParamsPassArrayStruct _v) { _dirty = true; _parent = _v; }
        private List<KaitaiStruct.ReadWrite> structs;
        private ParamsPassArrayStruct _root;
        private ParamsPassArrayStruct _parent;
    }
    public List<KaitaiStruct.ReadWrite> oneTwo() {
        if (this.oneTwo != null)
            return this.oneTwo;
        this.oneTwo = new ArrayList<KaitaiStruct.ReadWrite>(Arrays.asList(one(), two()));
        return this.oneTwo;
    }
    public void _invalidateOneTwo() { this.oneTwo = null; }
    public Foo one() { return one; }
    public void setOne(Foo _v) { _dirty = true; one = _v; }
    public Bar two() { return two; }
    public void setTwo(Bar _v) { _dirty = true; two = _v; }
    public StructType passStructs() { return passStructs; }
    public void setPassStructs(StructType _v) { _dirty = true; passStructs = _v; }
    public ParamsPassArrayStruct _root() { return _root; }
    public void set_root(ParamsPassArrayStruct _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<KaitaiStruct.ReadWrite> oneTwo;
    private Foo one;
    private Bar two;
    private StructType passStructs;
    private ParamsPassArrayStruct _root;
    private KaitaiStruct.ReadWrite _parent;
}
