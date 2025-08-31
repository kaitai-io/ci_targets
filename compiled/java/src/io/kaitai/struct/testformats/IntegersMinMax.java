// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class IntegersMinMax extends KaitaiStruct {
    public static IntegersMinMax fromFile(String fileName) throws IOException {
        return new IntegersMinMax(new ByteBufferKaitaiStream(fileName));
    }

    public IntegersMinMax(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IntegersMinMax(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IntegersMinMax(KaitaiStream _io, KaitaiStruct _parent, IntegersMinMax _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.unsignedMin = new Unsigned(this._io, this, _root);
        this.unsignedMax = new Unsigned(this._io, this, _root);
        this.signedMin = new Signed(this._io, this, _root);
        this.signedMax = new Signed(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.unsignedMin._fetchInstances();
        this.unsignedMax._fetchInstances();
        this.signedMin._fetchInstances();
        this.signedMax._fetchInstances();
    }
    public static class Signed extends KaitaiStruct {
        public static Signed fromFile(String fileName) throws IOException {
            return new Signed(new ByteBufferKaitaiStream(fileName));
        }

        public Signed(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Signed(KaitaiStream _io, IntegersMinMax _parent) {
            this(_io, _parent, null);
        }

        public Signed(KaitaiStream _io, IntegersMinMax _parent, IntegersMinMax _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.s1 = this._io.readS1();
            this.s2le = this._io.readS2le();
            this.s4le = this._io.readS4le();
            this.s8le = this._io.readS8le();
            this.s2be = this._io.readS2be();
            this.s4be = this._io.readS4be();
            this.s8be = this._io.readS8be();
        }

        public void _fetchInstances() {
        }
        private byte s1;
        private short s2le;
        private int s4le;
        private long s8le;
        private short s2be;
        private int s4be;
        private long s8be;
        private IntegersMinMax _root;
        private IntegersMinMax _parent;
        public byte s1() { return s1; }
        public short s2le() { return s2le; }
        public int s4le() { return s4le; }
        public long s8le() { return s8le; }
        public short s2be() { return s2be; }
        public int s4be() { return s4be; }
        public long s8be() { return s8be; }
        public IntegersMinMax _root() { return _root; }
        public IntegersMinMax _parent() { return _parent; }
    }
    public static class Unsigned extends KaitaiStruct {
        public static Unsigned fromFile(String fileName) throws IOException {
            return new Unsigned(new ByteBufferKaitaiStream(fileName));
        }

        public Unsigned(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Unsigned(KaitaiStream _io, IntegersMinMax _parent) {
            this(_io, _parent, null);
        }

        public Unsigned(KaitaiStream _io, IntegersMinMax _parent, IntegersMinMax _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.u1 = this._io.readU1();
            this.u2le = this._io.readU2le();
            this.u4le = this._io.readU4le();
            this.u8le = this._io.readU8le();
            this.u2be = this._io.readU2be();
            this.u4be = this._io.readU4be();
            this.u8be = this._io.readU8be();
        }

        public void _fetchInstances() {
        }
        private int u1;
        private int u2le;
        private long u4le;
        private long u8le;
        private int u2be;
        private long u4be;
        private long u8be;
        private IntegersMinMax _root;
        private IntegersMinMax _parent;
        public int u1() { return u1; }
        public int u2le() { return u2le; }
        public long u4le() { return u4le; }
        public long u8le() { return u8le; }
        public int u2be() { return u2be; }
        public long u4be() { return u4be; }
        public long u8be() { return u8be; }
        public IntegersMinMax _root() { return _root; }
        public IntegersMinMax _parent() { return _parent; }
    }
    private Unsigned unsignedMin;
    private Unsigned unsignedMax;
    private Signed signedMin;
    private Signed signedMax;
    private IntegersMinMax _root;
    private KaitaiStruct _parent;
    public Unsigned unsignedMin() { return unsignedMin; }
    public Unsigned unsignedMax() { return unsignedMax; }
    public Signed signedMin() { return signedMin; }
    public Signed signedMax() { return signedMax; }
    public IntegersMinMax _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
