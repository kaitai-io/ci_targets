// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NestedTypes extends KaitaiStruct {
    public static NestedTypes fromFile(String fileName) throws IOException {
        return new NestedTypes(new ByteBufferKaitaiStream(fileName));
    }

    public NestedTypes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NestedTypes(KaitaiStream _io, KaitaiStruct _parent, NestedTypes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = new SubtypeA(this._io, this, _root);
        this.two = new SubtypeB(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
        this.two._fetchInstances();
    }
    public static class SubtypeA extends KaitaiStruct {
        public static SubtypeA fromFile(String fileName) throws IOException {
            return new SubtypeA(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.typedAtRoot = new SubtypeB(this._io, this, _root);
            this.typedHere = new SubtypeC(this._io, this, _root);
        }

        public void _fetchInstances() {
            this.typedAtRoot._fetchInstances();
            this.typedHere._fetchInstances();
        }
        public static class SubtypeC extends KaitaiStruct {
            public static SubtypeC fromFile(String fileName) throws IOException {
                return new SubtypeC(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.valueC = this._io.readS1();
            }

            public void _fetchInstances() {
            }
            public byte valueC() { return valueC; }
            public NestedTypes _root() { return _root; }
            public NestedTypes.SubtypeA _parent() { return _parent; }
            private byte valueC;
            private NestedTypes _root;
            private NestedTypes.SubtypeA _parent;
        }
        public SubtypeB typedAtRoot() { return typedAtRoot; }
        public SubtypeC typedHere() { return typedHere; }
        public NestedTypes _root() { return _root; }
        public NestedTypes _parent() { return _parent; }
        private SubtypeB typedAtRoot;
        private SubtypeC typedHere;
        private NestedTypes _root;
        private NestedTypes _parent;
    }
    public static class SubtypeB extends KaitaiStruct {
        public static SubtypeB fromFile(String fileName) throws IOException {
            return new SubtypeB(new ByteBufferKaitaiStream(fileName));
        }

        public SubtypeB(KaitaiStream _io) {
            this(_io, null, null);
        }

        public SubtypeB(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public SubtypeB(KaitaiStream _io, KaitaiStruct _parent, NestedTypes _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.valueB = this._io.readS1();
        }

        public void _fetchInstances() {
        }
        public byte valueB() { return valueB; }
        public NestedTypes _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
        private byte valueB;
        private NestedTypes _root;
        private KaitaiStruct _parent;
    }
    public SubtypeA one() { return one; }
    public SubtypeB two() { return two; }
    public NestedTypes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private SubtypeA one;
    private SubtypeB two;
    private NestedTypes _root;
    private KaitaiStruct _parent;
}
