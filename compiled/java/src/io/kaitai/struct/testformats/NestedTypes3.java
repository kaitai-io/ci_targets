// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NestedTypes3 extends KaitaiStruct {
    public static NestedTypes3 fromFile(String fileName) throws IOException {
        return new NestedTypes3(new ByteBufferKaitaiStream(fileName));
    }

    public NestedTypes3(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypes3(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NestedTypes3(KaitaiStream _io, KaitaiStruct _parent, NestedTypes3 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.aCc = new SubtypeA.SubtypeCc(this._io, this, _root);
        this.aCD = new SubtypeA.SubtypeC.SubtypeD(this._io, this, _root);
        this.b = new SubtypeB(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.aCc._fetchInstances();
        this.aCD._fetchInstances();
        this.b._fetchInstances();
    }
    public static class SubtypeA extends KaitaiStruct {
        public static SubtypeA fromFile(String fileName) throws IOException {
            return new SubtypeA(new ByteBufferKaitaiStream(fileName));
        }

        public SubtypeA(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SubtypeA(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public SubtypeA(KaitaiStream _io, KaitaiStruct _parent, NestedTypes3 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        public static class SubtypeC extends KaitaiStruct {
            public static SubtypeC fromFile(String fileName) throws IOException {
                return new SubtypeC(new ByteBufferKaitaiStream(fileName));
            }

            public SubtypeC(KaitaiStream _io) {
                this(_io, null, null);
            }

            public SubtypeC(KaitaiStream _io, KaitaiStruct _parent) {
                this(_io, _parent, null);
            }

            public SubtypeC(KaitaiStream _io, KaitaiStruct _parent, NestedTypes3 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
            }

            public void _fetchInstances() {
            }
            public static class SubtypeD extends KaitaiStruct {
                public static SubtypeD fromFile(String fileName) throws IOException {
                    return new SubtypeD(new ByteBufferKaitaiStream(fileName));
                }

                public SubtypeD(KaitaiStream _io) {
                    this(_io, null, null);
                }

                public SubtypeD(KaitaiStream _io, KaitaiStruct _parent) {
                    this(_io, _parent, null);
                }

                public SubtypeD(KaitaiStream _io, KaitaiStruct _parent, NestedTypes3 _root) {
                    super(_io);
                    this._parent = _parent;
                    this._root = _root;
                    _read();
                }
                private void _read() {
                    this.valueD = this._io.readS1();
                }

                public void _fetchInstances() {
                }
                public byte valueD() { return valueD; }
                public NestedTypes3 _root() { return _root; }
                public KaitaiStruct _parent() { return _parent; }
                private byte valueD;
                private NestedTypes3 _root;
                private KaitaiStruct _parent;
            }
            public NestedTypes3 _root() { return _root; }
            public KaitaiStruct _parent() { return _parent; }
            private NestedTypes3 _root;
            private KaitaiStruct _parent;
        }
        public static class SubtypeCc extends KaitaiStruct {
            public static SubtypeCc fromFile(String fileName) throws IOException {
                return new SubtypeCc(new ByteBufferKaitaiStream(fileName));
            }

            public SubtypeCc(KaitaiStream _io) {
                this(_io, null, null);
            }

            public SubtypeCc(KaitaiStream _io, KaitaiStruct _parent) {
                this(_io, _parent, null);
            }

            public SubtypeCc(KaitaiStream _io, KaitaiStruct _parent, NestedTypes3 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.valueCc = this._io.readS1();
            }

            public void _fetchInstances() {
            }
            public byte valueCc() { return valueCc; }
            public NestedTypes3 _root() { return _root; }
            public KaitaiStruct _parent() { return _parent; }
            private byte valueCc;
            private NestedTypes3 _root;
            private KaitaiStruct _parent;
        }
        public NestedTypes3 _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
        private NestedTypes3 _root;
        private KaitaiStruct _parent;
    }
    public static class SubtypeB extends KaitaiStruct {
        public static SubtypeB fromFile(String fileName) throws IOException {
            return new SubtypeB(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.valueB = this._io.readS1();
            this.aCc = new SubtypeA.SubtypeCc(this._io, this, _root);
            this.aCD = new SubtypeA.SubtypeC.SubtypeD(this._io, this, _root);
        }

        public void _fetchInstances() {
            this.aCc._fetchInstances();
            this.aCD._fetchInstances();
        }
        public byte valueB() { return valueB; }
        public SubtypeA.SubtypeCc aCc() { return aCc; }
        public SubtypeA.SubtypeC.SubtypeD aCD() { return aCD; }
        public NestedTypes3 _root() { return _root; }
        public NestedTypes3 _parent() { return _parent; }
        private byte valueB;
        private SubtypeA.SubtypeCc aCc;
        private SubtypeA.SubtypeC.SubtypeD aCD;
        private NestedTypes3 _root;
        private NestedTypes3 _parent;
    }
    public SubtypeA.SubtypeCc aCc() { return aCc; }
    public SubtypeA.SubtypeC.SubtypeD aCD() { return aCD; }
    public SubtypeB b() { return b; }
    public NestedTypes3 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private SubtypeA.SubtypeCc aCc;
    private SubtypeA.SubtypeC.SubtypeD aCD;
    private SubtypeB b;
    private NestedTypes3 _root;
    private KaitaiStruct _parent;
}
