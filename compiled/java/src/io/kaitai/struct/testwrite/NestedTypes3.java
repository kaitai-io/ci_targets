// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NestedTypes3 extends KaitaiStruct.ReadWrite {
    public static NestedTypes3 fromFile(String fileName) throws IOException {
        return new NestedTypes3(new ByteBufferKaitaiStream(fileName));
    }
    public NestedTypes3() {
        this(null, null, null);
    }

    public NestedTypes3(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypes3(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NestedTypes3(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes3 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.aCc = new SubtypeA.SubtypeCc(this._io, this, _root);
        this.aCc._read();
        this.aCD = new SubtypeA.SubtypeC.SubtypeD(this._io, this, _root);
        this.aCD._read();
        this.b = new SubtypeB(this._io, this, _root);
        this.b._read();
    }

    public void _fetchInstances() {
        this.aCc._fetchInstances();
        this.aCD._fetchInstances();
        this.b._fetchInstances();
    }

    public void _write_Seq() {
        this.aCc._write_Seq(this._io);
        this.aCD._write_Seq(this._io);
        this.b._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.aCc._root(), _root()))
            throw new ConsistencyError("a_cc", this.aCc._root(), _root());
        if (!Objects.equals(this.aCc._parent(), this))
            throw new ConsistencyError("a_cc", this.aCc._parent(), this);
        if (!Objects.equals(this.aCD._root(), _root()))
            throw new ConsistencyError("a_c_d", this.aCD._root(), _root());
        if (!Objects.equals(this.aCD._parent(), this))
            throw new ConsistencyError("a_c_d", this.aCD._parent(), this);
        if (!Objects.equals(this.b._root(), _root()))
            throw new ConsistencyError("b", this.b._root(), _root());
        if (!Objects.equals(this.b._parent(), this))
            throw new ConsistencyError("b", this.b._parent(), this);
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

        public SubtypeA(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public SubtypeA(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes3 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
        }

        public void _check() {
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

            public SubtypeC(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
                this(_io, _parent, null);
            }

            public SubtypeC(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes3 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
            }

            public void _check() {
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

                public SubtypeD(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
                    this(_io, _parent, null);
                }

                public SubtypeD(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes3 _root) {
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
                private NestedTypes3 _root;
                private KaitaiStruct.ReadWrite _parent;
                public byte valueD() { return valueD; }
                public void setValueD(byte _v) { valueD = _v; }
                public NestedTypes3 _root() { return _root; }
                public void set_root(NestedTypes3 _v) { _root = _v; }
                public KaitaiStruct.ReadWrite _parent() { return _parent; }
                public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
            }
            private NestedTypes3 _root;
            private KaitaiStruct.ReadWrite _parent;
            public NestedTypes3 _root() { return _root; }
            public void set_root(NestedTypes3 _v) { _root = _v; }
            public KaitaiStruct.ReadWrite _parent() { return _parent; }
            public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
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

            public SubtypeCc(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypes3 _root) {
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
            private NestedTypes3 _root;
            private KaitaiStruct.ReadWrite _parent;
            public byte valueCc() { return valueCc; }
            public void setValueCc(byte _v) { valueCc = _v; }
            public NestedTypes3 _root() { return _root; }
            public void set_root(NestedTypes3 _v) { _root = _v; }
            public KaitaiStruct.ReadWrite _parent() { return _parent; }
            public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
        }
        private NestedTypes3 _root;
        private KaitaiStruct.ReadWrite _parent;
        public NestedTypes3 _root() { return _root; }
        public void set_root(NestedTypes3 _v) { _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
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

        public SubtypeB(KaitaiStream _io, NestedTypes3 _parent) {
            this(_io, _parent, null);
        }

        public SubtypeB(KaitaiStream _io, NestedTypes3 _parent, NestedTypes3 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.valueB = this._io.readS1();
            this.aCc = new SubtypeA.SubtypeCc(this._io, this, _root);
            this.aCc._read();
            this.aCD = new SubtypeA.SubtypeC.SubtypeD(this._io, this, _root);
            this.aCD._read();
        }

        public void _fetchInstances() {
            this.aCc._fetchInstances();
            this.aCD._fetchInstances();
        }

        public void _write_Seq() {
            this._io.writeS1(this.valueB);
            this.aCc._write_Seq(this._io);
            this.aCD._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.aCc._root(), _root()))
                throw new ConsistencyError("a_cc", this.aCc._root(), _root());
            if (!Objects.equals(this.aCc._parent(), this))
                throw new ConsistencyError("a_cc", this.aCc._parent(), this);
            if (!Objects.equals(this.aCD._root(), _root()))
                throw new ConsistencyError("a_c_d", this.aCD._root(), _root());
            if (!Objects.equals(this.aCD._parent(), this))
                throw new ConsistencyError("a_c_d", this.aCD._parent(), this);
        }
        private byte valueB;
        private SubtypeA.SubtypeCc aCc;
        private SubtypeA.SubtypeC.SubtypeD aCD;
        private NestedTypes3 _root;
        private NestedTypes3 _parent;
        public byte valueB() { return valueB; }
        public void setValueB(byte _v) { valueB = _v; }
        public SubtypeA.SubtypeCc aCc() { return aCc; }
        public void setACc(SubtypeA.SubtypeCc _v) { aCc = _v; }
        public SubtypeA.SubtypeC.SubtypeD aCD() { return aCD; }
        public void setACD(SubtypeA.SubtypeC.SubtypeD _v) { aCD = _v; }
        public NestedTypes3 _root() { return _root; }
        public void set_root(NestedTypes3 _v) { _root = _v; }
        public NestedTypes3 _parent() { return _parent; }
        public void set_parent(NestedTypes3 _v) { _parent = _v; }
    }
    private SubtypeA.SubtypeCc aCc;
    private SubtypeA.SubtypeC.SubtypeD aCD;
    private SubtypeB b;
    private NestedTypes3 _root;
    private KaitaiStruct.ReadWrite _parent;
    public SubtypeA.SubtypeCc aCc() { return aCc; }
    public void setACc(SubtypeA.SubtypeCc _v) { aCc = _v; }
    public SubtypeA.SubtypeC.SubtypeD aCD() { return aCD; }
    public void setACD(SubtypeA.SubtypeC.SubtypeD _v) { aCD = _v; }
    public SubtypeB b() { return b; }
    public void setB(SubtypeB _v) { b = _v; }
    public NestedTypes3 _root() { return _root; }
    public void set_root(NestedTypes3 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
