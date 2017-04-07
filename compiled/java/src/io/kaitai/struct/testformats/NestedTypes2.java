// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class NestedTypes2 extends KaitaiStruct {
    public static NestedTypes2 fromFile(String fileName) throws IOException {
        return new NestedTypes2(new KaitaiStream(fileName));
    }

    public NestedTypes2(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public NestedTypes2(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public NestedTypes2(KaitaiStream _io, KaitaiStruct _parent, NestedTypes2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.one = new SubtypeA(this._io, this, _root);
        this.two = new SubtypeB(this._io, this, _root);
    }
    public static class SubtypeA extends KaitaiStruct {
        public static SubtypeA fromFile(String fileName) throws IOException {
            return new SubtypeA(new KaitaiStream(fileName));
        }

        public SubtypeA(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public SubtypeA(KaitaiStream _io, NestedTypes2 _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public SubtypeA(KaitaiStream _io, NestedTypes2 _parent, NestedTypes2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.typedAtRoot = new SubtypeB(this._io, this, _root);
            this.typedHere1 = new SubtypeC(this._io, this, _root);
            this.typedHere2 = new SubtypeCc(this._io, this, _root);
        }
        public static class SubtypeC extends KaitaiStruct {
            public static SubtypeC fromFile(String fileName) throws IOException {
                return new SubtypeC(new KaitaiStream(fileName));
            }

            public SubtypeC(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public SubtypeC(KaitaiStream _io, SubtypeA _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public SubtypeC(KaitaiStream _io, SubtypeA _parent, NestedTypes2 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.valueC = this._io.readS1();
                this.typedHere = new SubtypeD(this._io, this, _root);
                this.typedParent = new SubtypeCc(this._io, this, _root);
                this.typedRoot = new SubtypeB(this._io, this, _root);
            }
            public static class SubtypeD extends KaitaiStruct {
                public static SubtypeD fromFile(String fileName) throws IOException {
                    return new SubtypeD(new KaitaiStream(fileName));
                }

                public SubtypeD(KaitaiStream _io) {
                    super(_io);
                    _read();
                }

                public SubtypeD(KaitaiStream _io, SubtypeC _parent) {
                    super(_io);
                    this._parent = _parent;
                    _read();
                }

                public SubtypeD(KaitaiStream _io, SubtypeC _parent, NestedTypes2 _root) {
                    super(_io);
                    this._parent = _parent;
                    this._root = _root;
                    _read();
                }
                private void _read() {
                    this.valueD = this._io.readS1();
                }
                private byte valueD;
                private NestedTypes2 _root;
                private NestedTypes2.SubtypeA.SubtypeC _parent;
                public byte valueD() { return valueD; }
                public NestedTypes2 _root() { return _root; }
                public NestedTypes2.SubtypeA.SubtypeC _parent() { return _parent; }
            }
            private byte valueC;
            private SubtypeD typedHere;
            private SubtypeCc typedParent;
            private SubtypeB typedRoot;
            private NestedTypes2 _root;
            private NestedTypes2.SubtypeA _parent;
            public byte valueC() { return valueC; }
            public SubtypeD typedHere() { return typedHere; }
            public SubtypeCc typedParent() { return typedParent; }
            public SubtypeB typedRoot() { return typedRoot; }
            public NestedTypes2 _root() { return _root; }
            public NestedTypes2.SubtypeA _parent() { return _parent; }
        }
        public static class SubtypeCc extends KaitaiStruct {
            public static SubtypeCc fromFile(String fileName) throws IOException {
                return new SubtypeCc(new KaitaiStream(fileName));
            }

            public SubtypeCc(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public SubtypeCc(KaitaiStream _io, KaitaiStruct _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public SubtypeCc(KaitaiStream _io, KaitaiStruct _parent, NestedTypes2 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.valueCc = this._io.readS1();
            }
            private byte valueCc;
            private NestedTypes2 _root;
            private KaitaiStruct _parent;
            public byte valueCc() { return valueCc; }
            public NestedTypes2 _root() { return _root; }
            public KaitaiStruct _parent() { return _parent; }
        }
        private SubtypeB typedAtRoot;
        private SubtypeC typedHere1;
        private SubtypeCc typedHere2;
        private NestedTypes2 _root;
        private NestedTypes2 _parent;
        public SubtypeB typedAtRoot() { return typedAtRoot; }
        public SubtypeC typedHere1() { return typedHere1; }
        public SubtypeCc typedHere2() { return typedHere2; }
        public NestedTypes2 _root() { return _root; }
        public NestedTypes2 _parent() { return _parent; }
    }
    public static class SubtypeB extends KaitaiStruct {
        public static SubtypeB fromFile(String fileName) throws IOException {
            return new SubtypeB(new KaitaiStream(fileName));
        }

        public SubtypeB(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public SubtypeB(KaitaiStream _io, KaitaiStruct _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public SubtypeB(KaitaiStream _io, KaitaiStruct _parent, NestedTypes2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.valueB = this._io.readS1();
        }
        private byte valueB;
        private NestedTypes2 _root;
        private KaitaiStruct _parent;
        public byte valueB() { return valueB; }
        public NestedTypes2 _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private SubtypeA one;
    private SubtypeB two;
    private NestedTypes2 _root;
    private KaitaiStruct _parent;
    public SubtypeA one() { return one; }
    public SubtypeB two() { return two; }
    public NestedTypes2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
