// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class DefaultEndianMod extends KaitaiStruct {
    public static DefaultEndianMod fromFile(String fileName) throws IOException {
        return new DefaultEndianMod(new ByteBufferKaitaiStream(fileName));
    }

    public DefaultEndianMod(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultEndianMod(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public DefaultEndianMod(KaitaiStream _io, KaitaiStruct _parent, DefaultEndianMod _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.main = new MainObj(this._io, this, _root);
    }
    public static class MainObj extends KaitaiStruct {
        public static MainObj fromFile(String fileName) throws IOException {
            return new MainObj(new ByteBufferKaitaiStream(fileName));
        }

        public MainObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public MainObj(KaitaiStream _io, DefaultEndianMod _parent) {
            this(_io, _parent, null);
        }

        public MainObj(KaitaiStream _io, DefaultEndianMod _parent, DefaultEndianMod _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.one = this._io.readS4le();
            this.nest = new Subnest(this._io, this, _root);
            this.nestBe = new SubnestBe(this._io, this, _root);
        }
        public static class Subnest extends KaitaiStruct {
            public static Subnest fromFile(String fileName) throws IOException {
                return new Subnest(new ByteBufferKaitaiStream(fileName));
            }

            public Subnest(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Subnest(KaitaiStream _io, DefaultEndianMod.MainObj _parent) {
                this(_io, _parent, null);
            }

            public Subnest(KaitaiStream _io, DefaultEndianMod.MainObj _parent, DefaultEndianMod _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.two = this._io.readS4le();
            }
            private int two;
            private DefaultEndianMod _root;
            private DefaultEndianMod.MainObj _parent;
            public int two() { return two; }
            public DefaultEndianMod _root() { return _root; }
            public DefaultEndianMod.MainObj _parent() { return _parent; }
        }
        public static class SubnestBe extends KaitaiStruct {
            public static SubnestBe fromFile(String fileName) throws IOException {
                return new SubnestBe(new ByteBufferKaitaiStream(fileName));
            }

            public SubnestBe(KaitaiStream _io) {
                this(_io, null, null);
            }

            public SubnestBe(KaitaiStream _io, DefaultEndianMod.MainObj _parent) {
                this(_io, _parent, null);
            }

            public SubnestBe(KaitaiStream _io, DefaultEndianMod.MainObj _parent, DefaultEndianMod _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.two = this._io.readS4be();
            }
            private int two;
            private DefaultEndianMod _root;
            private DefaultEndianMod.MainObj _parent;
            public int two() { return two; }
            public DefaultEndianMod _root() { return _root; }
            public DefaultEndianMod.MainObj _parent() { return _parent; }
        }
        private int one;
        private Subnest nest;
        private SubnestBe nestBe;
        private DefaultEndianMod _root;
        private DefaultEndianMod _parent;
        public int one() { return one; }
        public Subnest nest() { return nest; }
        public SubnestBe nestBe() { return nestBe; }
        public DefaultEndianMod _root() { return _root; }
        public DefaultEndianMod _parent() { return _parent; }
    }
    private MainObj main;
    private DefaultEndianMod _root;
    private KaitaiStruct _parent;
    public MainObj main() { return main; }
    public DefaultEndianMod _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
