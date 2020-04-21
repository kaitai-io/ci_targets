// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class DefaultBitEndianMod extends KaitaiStruct {
    public static DefaultBitEndianMod fromFile(String fileName) throws IOException {
        return new DefaultBitEndianMod(new ByteBufferKaitaiStream(fileName));
    }

    public DefaultBitEndianMod(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultBitEndianMod(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public DefaultBitEndianMod(KaitaiStream _io, KaitaiStruct _parent, DefaultBitEndianMod _root) {
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

        public MainObj(KaitaiStream _io, DefaultBitEndianMod _parent) {
            this(_io, _parent, null);
        }

        public MainObj(KaitaiStream _io, DefaultBitEndianMod _parent, DefaultBitEndianMod _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.one = this._io.readBitsInt(9);
            this.two = this._io.readBitsInt(15);
            this._io.alignToByte();
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

            public Subnest(KaitaiStream _io, DefaultBitEndianMod.MainObj _parent) {
                this(_io, _parent, null);
            }

            public Subnest(KaitaiStream _io, DefaultBitEndianMod.MainObj _parent, DefaultBitEndianMod _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.two = this._io.readBitsInt(16);
            }
            private long two;
            private DefaultBitEndianMod _root;
            private DefaultBitEndianMod.MainObj _parent;
            public long two() { return two; }
            public DefaultBitEndianMod _root() { return _root; }
            public DefaultBitEndianMod.MainObj _parent() { return _parent; }
        }
        public static class SubnestBe extends KaitaiStruct {
            public static SubnestBe fromFile(String fileName) throws IOException {
                return new SubnestBe(new ByteBufferKaitaiStream(fileName));
            }

            public SubnestBe(KaitaiStream _io) {
                this(_io, null, null);
            }

            public SubnestBe(KaitaiStream _io, DefaultBitEndianMod.MainObj _parent) {
                this(_io, _parent, null);
            }

            public SubnestBe(KaitaiStream _io, DefaultBitEndianMod.MainObj _parent, DefaultBitEndianMod _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.two = this._io.readBitsInt(16);
            }
            private long two;
            private DefaultBitEndianMod _root;
            private DefaultBitEndianMod.MainObj _parent;
            public long two() { return two; }
            public DefaultBitEndianMod _root() { return _root; }
            public DefaultBitEndianMod.MainObj _parent() { return _parent; }
        }
        private long one;
        private long two;
        private Subnest nest;
        private SubnestBe nestBe;
        private DefaultBitEndianMod _root;
        private DefaultBitEndianMod _parent;
        public long one() { return one; }
        public long two() { return two; }
        public Subnest nest() { return nest; }
        public SubnestBe nestBe() { return nestBe; }
        public DefaultBitEndianMod _root() { return _root; }
        public DefaultBitEndianMod _parent() { return _parent; }
    }
    private MainObj main;
    private DefaultBitEndianMod _root;
    private KaitaiStruct _parent;
    public MainObj main() { return main; }
    public DefaultBitEndianMod _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
