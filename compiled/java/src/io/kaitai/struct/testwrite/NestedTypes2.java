// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NestedTypes2 extends KaitaiStruct.ReadWrite {
    public static NestedTypes2 fromFile(String fileName) throws IOException {
        return new NestedTypes2(new ByteBufferKaitaiStream(fileName));
    }
    public NestedTypes2() {
        this(null, null, null);
    }

    public NestedTypes2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypes2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NestedTypes2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes2 _root) {
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

        public SubtypeA(KaitaiStream _io, NestedTypes2 _parent) {
            this(_io, _parent, null);
        }

        public SubtypeA(KaitaiStream _io, NestedTypes2 _parent, NestedTypes2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.typedAtRoot = new SubtypeB(this._io, this, _root);
            this.typedAtRoot._read();
            this.typedHere1 = new SubtypeC(this._io, this, _root);
            this.typedHere1._read();
            this.typedHere2 = new SubtypeCc(this._io, this, _root);
            this.typedHere2._read();
        }

        public void _fetchInstances() {
            this.typedAtRoot._fetchInstances();
            this.typedHere1._fetchInstances();
            this.typedHere2._fetchInstances();
        }

        public void _write_Seq() {
            this.typedAtRoot._write_Seq(this._io);
            this.typedHere1._write_Seq(this._io);
            this.typedHere2._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.typedAtRoot._root(), _root()))
                throw new ConsistencyError("typed_at_root", this.typedAtRoot._root(), _root());
            if (!Objects.equals(this.typedAtRoot._parent(), this))
                throw new ConsistencyError("typed_at_root", this.typedAtRoot._parent(), this);
            if (!Objects.equals(this.typedHere1._root(), _root()))
                throw new ConsistencyError("typed_here1", this.typedHere1._root(), _root());
            if (!Objects.equals(this.typedHere1._parent(), this))
                throw new ConsistencyError("typed_here1", this.typedHere1._parent(), this);
            if (!Objects.equals(this.typedHere2._root(), _root()))
                throw new ConsistencyError("typed_here2", this.typedHere2._root(), _root());
            if (!Objects.equals(this.typedHere2._parent(), this))
                throw new ConsistencyError("typed_here2", this.typedHere2._parent(), this);
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

            public SubtypeC(KaitaiStream _io, NestedTypes2.SubtypeA _parent) {
                this(_io, _parent, null);
            }

            public SubtypeC(KaitaiStream _io, NestedTypes2.SubtypeA _parent, NestedTypes2 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.valueC = this._io.readS1();
                this.typedHere = new SubtypeD(this._io, this, _root);
                this.typedHere._read();
                this.typedParent = new SubtypeCc(this._io, this, _root);
                this.typedParent._read();
                this.typedRoot = new SubtypeB(this._io, this, _root);
                this.typedRoot._read();
            }

            public void _fetchInstances() {
                this.typedHere._fetchInstances();
                this.typedParent._fetchInstances();
                this.typedRoot._fetchInstances();
            }

            public void _write_Seq() {
                this._io.writeS1(this.valueC);
                this.typedHere._write_Seq(this._io);
                this.typedParent._write_Seq(this._io);
                this.typedRoot._write_Seq(this._io);
            }

            public void _check() {
                if (!Objects.equals(this.typedHere._root(), _root()))
                    throw new ConsistencyError("typed_here", this.typedHere._root(), _root());
                if (!Objects.equals(this.typedHere._parent(), this))
                    throw new ConsistencyError("typed_here", this.typedHere._parent(), this);
                if (!Objects.equals(this.typedParent._root(), _root()))
                    throw new ConsistencyError("typed_parent", this.typedParent._root(), _root());
                if (!Objects.equals(this.typedParent._parent(), this))
                    throw new ConsistencyError("typed_parent", this.typedParent._parent(), this);
                if (!Objects.equals(this.typedRoot._root(), _root()))
                    throw new ConsistencyError("typed_root", this.typedRoot._root(), _root());
                if (!Objects.equals(this.typedRoot._parent(), this))
                    throw new ConsistencyError("typed_root", this.typedRoot._parent(), this);
            }
            public static class SubtypeD extends KaitaiStruct.ReadWrite {
                public static SubtypeD fromFile(String fileName) throws IOException {
                    return new SubtypeD(new ByteBufferKaitaiStream(fileName));
                }
                public SubtypeD() {
                    this(null, null, null);
                }

                public SubtypeD(KaitaiStream _io) {
                    this(_io, null, null);
                }

                public SubtypeD(KaitaiStream _io, NestedTypes2.SubtypeA.SubtypeC _parent) {
                    this(_io, _parent, null);
                }

                public SubtypeD(KaitaiStream _io, NestedTypes2.SubtypeA.SubtypeC _parent, NestedTypes2 _root) {
                    super(_io);
                    this._parent = _parent;
                    this._root = _root;
                }
                public void _read() {
                    this.valueD = this._io.readS1();
                }

                public void _fetchInstances() {
                }

                public void _write_Seq() {
                    this._io.writeS1(this.valueD);
                }

                public void _check() {
                }
                private byte valueD;
                private NestedTypes2 _root;
                private NestedTypes2.SubtypeA.SubtypeC _parent;
                public byte valueD() { return valueD; }
                public void setValueD(byte _v) { valueD = _v; }
                public NestedTypes2 _root() { return _root; }
                public void set_root(NestedTypes2 _v) { _root = _v; }
                public NestedTypes2.SubtypeA.SubtypeC _parent() { return _parent; }
                public void set_parent(NestedTypes2.SubtypeA.SubtypeC _v) { _parent = _v; }
            }
            private byte valueC;
            private SubtypeD typedHere;
            private SubtypeCc typedParent;
            private SubtypeB typedRoot;
            private NestedTypes2 _root;
            private NestedTypes2.SubtypeA _parent;
            public byte valueC() { return valueC; }
            public void setValueC(byte _v) { valueC = _v; }
            public SubtypeD typedHere() { return typedHere; }
            public void setTypedHere(SubtypeD _v) { typedHere = _v; }
            public SubtypeCc typedParent() { return typedParent; }
            public void setTypedParent(SubtypeCc _v) { typedParent = _v; }
            public SubtypeB typedRoot() { return typedRoot; }
            public void setTypedRoot(SubtypeB _v) { typedRoot = _v; }
            public NestedTypes2 _root() { return _root; }
            public void set_root(NestedTypes2 _v) { _root = _v; }
            public NestedTypes2.SubtypeA _parent() { return _parent; }
            public void set_parent(NestedTypes2.SubtypeA _v) { _parent = _v; }
        }
        public static class SubtypeCc extends KaitaiStruct.ReadWrite {
            public static SubtypeCc fromFile(String fileName) throws IOException {
                return new SubtypeCc(new ByteBufferKaitaiStream(fileName));
            }
            public SubtypeCc() {
                this(null, null, null);
            }

            public SubtypeCc(KaitaiStream _io) {
                this(_io, null, null);
            }

            public SubtypeCc(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
                this(_io, _parent, null);
            }

            public SubtypeCc(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes2 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.valueCc = this._io.readS1();
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                this._io.writeS1(this.valueCc);
            }

            public void _check() {
            }
            private byte valueCc;
            private NestedTypes2 _root;
            private KaitaiStruct.ReadWrite _parent;
            public byte valueCc() { return valueCc; }
            public void setValueCc(byte _v) { valueCc = _v; }
            public NestedTypes2 _root() { return _root; }
            public void set_root(NestedTypes2 _v) { _root = _v; }
            public KaitaiStruct.ReadWrite _parent() { return _parent; }
            public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
        }
        private SubtypeB typedAtRoot;
        private SubtypeC typedHere1;
        private SubtypeCc typedHere2;
        private NestedTypes2 _root;
        private NestedTypes2 _parent;
        public SubtypeB typedAtRoot() { return typedAtRoot; }
        public void setTypedAtRoot(SubtypeB _v) { typedAtRoot = _v; }
        public SubtypeC typedHere1() { return typedHere1; }
        public void setTypedHere1(SubtypeC _v) { typedHere1 = _v; }
        public SubtypeCc typedHere2() { return typedHere2; }
        public void setTypedHere2(SubtypeCc _v) { typedHere2 = _v; }
        public NestedTypes2 _root() { return _root; }
        public void set_root(NestedTypes2 _v) { _root = _v; }
        public NestedTypes2 _parent() { return _parent; }
        public void set_parent(NestedTypes2 _v) { _parent = _v; }
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

        public SubtypeB(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes2 _root) {
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
        private NestedTypes2 _root;
        private KaitaiStruct.ReadWrite _parent;
        public byte valueB() { return valueB; }
        public void setValueB(byte _v) { valueB = _v; }
        public NestedTypes2 _root() { return _root; }
        public void set_root(NestedTypes2 _v) { _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    }
    private SubtypeA one;
    private SubtypeB two;
    private NestedTypes2 _root;
    private KaitaiStruct.ReadWrite _parent;
    public SubtypeA one() { return one; }
    public void setOne(SubtypeA _v) { one = _v; }
    public SubtypeB two() { return two; }
    public void setTwo(SubtypeB _v) { two = _v; }
    public NestedTypes2 _root() { return _root; }
    public void set_root(NestedTypes2 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
