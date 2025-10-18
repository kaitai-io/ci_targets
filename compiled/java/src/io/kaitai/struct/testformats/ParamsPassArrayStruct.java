// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;

public class ParamsPassArrayStruct extends KaitaiStruct {
    public static ParamsPassArrayStruct fromFile(String fileName) throws IOException {
        return new ParamsPassArrayStruct(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassArrayStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayStruct(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayStruct(KaitaiStream _io, KaitaiStruct _parent, ParamsPassArrayStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = new Foo(this._io, this, _root);
        this.two = new Bar(this._io, this, _root);
        this.passStructs = new StructType(this._io, this, _root, oneTwo());
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
        this.two._fetchInstances();
        this.passStructs._fetchInstances();
    }
    public static class Bar extends KaitaiStruct {
        public static Bar fromFile(String fileName) throws IOException {
            return new Bar(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.b = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        public int b() { return b; }
        public ParamsPassArrayStruct _root() { return _root; }
        public ParamsPassArrayStruct _parent() { return _parent; }
        private int b;
        private ParamsPassArrayStruct _root;
        private ParamsPassArrayStruct _parent;
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.f = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        public int f() { return f; }
        public ParamsPassArrayStruct _root() { return _root; }
        public ParamsPassArrayStruct _parent() { return _parent; }
        private int f;
        private ParamsPassArrayStruct _root;
        private ParamsPassArrayStruct _parent;
    }
    public static class StructType extends KaitaiStruct {

        public StructType(KaitaiStream _io, List<KaitaiStruct> structs) {
            this(_io, null, null, structs);
        }

        public StructType(KaitaiStream _io, ParamsPassArrayStruct _parent, List<KaitaiStruct> structs) {
            this(_io, _parent, null, structs);
        }

        public StructType(KaitaiStream _io, ParamsPassArrayStruct _parent, ParamsPassArrayStruct _root, List<KaitaiStruct> structs) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.structs = structs;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        public List<KaitaiStruct> structs() { return structs; }
        public ParamsPassArrayStruct _root() { return _root; }
        public ParamsPassArrayStruct _parent() { return _parent; }
        private List<KaitaiStruct> structs;
        private ParamsPassArrayStruct _root;
        private ParamsPassArrayStruct _parent;
    }
    public List<KaitaiStruct> oneTwo() {
        if (this.oneTwo != null)
            return this.oneTwo;
        this.oneTwo = new ArrayList<KaitaiStruct>(Arrays.asList(one(), two()));
        return this.oneTwo;
    }
    public Foo one() { return one; }
    public Bar two() { return two; }
    public StructType passStructs() { return passStructs; }
    public ParamsPassArrayStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<KaitaiStruct> oneTwo;
    private Foo one;
    private Bar two;
    private StructType passStructs;
    private ParamsPassArrayStruct _root;
    private KaitaiStruct _parent;
}
