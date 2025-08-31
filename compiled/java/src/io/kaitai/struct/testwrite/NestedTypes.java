// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NestedTypes extends KaitaiStruct.ReadWrite {
    public static NestedTypes fromFile(String fileName) throws IOException {
        return new NestedTypes(new ByteBufferKaitaiStream(fileName));
    }
    public NestedTypes() {
        this(null, null, null);
    }

    public NestedTypes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NestedTypes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = new SubtypeA(this._io, this, _root);
        this.one._read();
        this.two = new SubtypeB(this._io, this, _root);
        this.two._read();
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
        this.two._fetchInstances();
    }

    public void _write_Seq() {
        this.one._write_Seq(this._io);
        this.two._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.one._root(), _root()))
            throw new ConsistencyError("one", this.one._root(), _root());
        if (!Objects.equals(this.one._parent(), this))
            throw new ConsistencyError("one", this.one._parent(), this);
        if (!Objects.equals(this.two._root(), _root()))
            throw new ConsistencyError("two", this.two._root(), _root());
        if (!Objects.equals(this.two._parent(), this))
            throw new ConsistencyError("two", this.two._parent(), this);
    }
    public static class SubtypeA extends KaitaiStruct.ReadWrite {
        public static SubtypeA fromFile(String fileName) throws IOException {
            return new SubtypeA(new ByteBufferKaitaiStream(fileName));
        }
        public SubtypeA() {
            this(null, null, null);
        }

        public SubtypeA(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SubtypeA(KaitaiStream _io, NestedTypes _parent) {
            this(_io, _parent, null);
        }

        public SubtypeA(KaitaiStream _io, NestedTypes _parent, NestedTypes _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.typedAtRoot = new SubtypeB(this._io, this, _root);
            this.typedAtRoot._read();
            this.typedHere = new SubtypeC(this._io, this, _root);
            this.typedHere._read();
        }

        public void _fetchInstances() {
            this.typedAtRoot._fetchInstances();
            this.typedHere._fetchInstances();
        }

        public void _write_Seq() {
            this.typedAtRoot._write_Seq(this._io);
            this.typedHere._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.typedAtRoot._root(), _root()))
                throw new ConsistencyError("typed_at_root", this.typedAtRoot._root(), _root());
            if (!Objects.equals(this.typedAtRoot._parent(), this))
                throw new ConsistencyError("typed_at_root", this.typedAtRoot._parent(), this);
            if (!Objects.equals(this.typedHere._root(), _root()))
                throw new ConsistencyError("typed_here", this.typedHere._root(), _root());
            if (!Objects.equals(this.typedHere._parent(), this))
                throw new ConsistencyError("typed_here", this.typedHere._parent(), this);
        }
        public static class SubtypeC extends KaitaiStruct.ReadWrite {
            public static SubtypeC fromFile(String fileName) throws IOException {
                return new SubtypeC(new ByteBufferKaitaiStream(fileName));
            }
            public SubtypeC() {
                this(null, null, null);
            }

            public SubtypeC(KaitaiStream _io) {
                this(_io, null, null);
            }

            public SubtypeC(KaitaiStream _io, NestedTypes.SubtypeA _parent) {
                this(_io, _parent, null);
            }

            public SubtypeC(KaitaiStream _io, NestedTypes.SubtypeA _parent, NestedTypes _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.valueC = this._io.readS1();
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                this._io.writeS1(this.valueC);
            }

            public void _check() {
            }
            private byte valueC;
            private NestedTypes _root;
            private NestedTypes.SubtypeA _parent;
            public byte valueC() { return valueC; }
            public void setValueC(byte _v) { valueC = _v; }
            public NestedTypes _root() { return _root; }
            public void set_root(NestedTypes _v) { _root = _v; }
            public NestedTypes.SubtypeA _parent() { return _parent; }
            public void set_parent(NestedTypes.SubtypeA _v) { _parent = _v; }
        }
        private SubtypeB typedAtRoot;
        private SubtypeC typedHere;
        private NestedTypes _root;
        private NestedTypes _parent;
        public SubtypeB typedAtRoot() { return typedAtRoot; }
        public void setTypedAtRoot(SubtypeB _v) { typedAtRoot = _v; }
        public SubtypeC typedHere() { return typedHere; }
        public void setTypedHere(SubtypeC _v) { typedHere = _v; }
        public NestedTypes _root() { return _root; }
        public void set_root(NestedTypes _v) { _root = _v; }
        public NestedTypes _parent() { return _parent; }
        public void set_parent(NestedTypes _v) { _parent = _v; }
    }
    public static class SubtypeB extends KaitaiStruct.ReadWrite {
        public static SubtypeB fromFile(String fileName) throws IOException {
            return new SubtypeB(new ByteBufferKaitaiStream(fileName));
        }
        public SubtypeB() {
            this(null, null, null);
        }

        public SubtypeB(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SubtypeB(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public SubtypeB(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.valueB = this._io.readS1();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeS1(this.valueB);
        }

        public void _check() {
        }
        private byte valueB;
        private NestedTypes _root;
        private KaitaiStruct.ReadWrite _parent;
        public byte valueB() { return valueB; }
        public void setValueB(byte _v) { valueB = _v; }
        public NestedTypes _root() { return _root; }
        public void set_root(NestedTypes _v) { _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    }
    private SubtypeA one;
    private SubtypeB two;
    private NestedTypes _root;
    private KaitaiStruct.ReadWrite _parent;
    public SubtypeA one() { return one; }
    public void setOne(SubtypeA _v) { one = _v; }
    public SubtypeB two() { return two; }
    public void setTwo(SubtypeB _v) { two = _v; }
    public NestedTypes _root() { return _root; }
    public void set_root(NestedTypes _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
