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

public class DefaultEndianMod extends KaitaiStruct {
    public static DefaultEndianMod fromFile(String fileName) throws IOException {
        return new DefaultEndianMod(new KaitaiStream(fileName));
    }

    public DefaultEndianMod(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public DefaultEndianMod(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public DefaultEndianMod(KaitaiStream _io, KaitaiStruct _parent, DefaultEndianMod _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.main = new MainObj(this._io, this, _root);
    }
    public static class MainObj extends KaitaiStruct {
        public static MainObj fromFile(String fileName) throws IOException {
            return new MainObj(new KaitaiStream(fileName));
        }

        public MainObj(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public MainObj(KaitaiStream _io, DefaultEndianMod _parent) {
            super(_io);
            this._parent = _parent;
            _read();
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
                return new Subnest(new KaitaiStream(fileName));
            }

            public Subnest(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public Subnest(KaitaiStream _io, MainObj _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public Subnest(KaitaiStream _io, MainObj _parent, DefaultEndianMod _root) {
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
                return new SubnestBe(new KaitaiStream(fileName));
            }

            public SubnestBe(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public SubnestBe(KaitaiStream _io, MainObj _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public SubnestBe(KaitaiStream _io, MainObj _parent, DefaultEndianMod _root) {
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
