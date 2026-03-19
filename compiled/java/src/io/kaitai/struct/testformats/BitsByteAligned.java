// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsByteAligned extends KaitaiStruct {
    public static BitsByteAligned fromFile(String fileName) throws IOException {
        return new BitsByteAligned(new ByteBufferKaitaiStream(fileName));
    }

    public BitsByteAligned(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsByteAligned(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsByteAligned(KaitaiStream _io, KaitaiStruct _parent, BitsByteAligned _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readBitsIntBe(6);
        this.byte1 = this._io.readU1();
        this.two = this._io.readBitsIntBe(3);
        this.three = this._io.readBitsIntBe(1) != 0;
        this.byte2 = this._io.readBytes(1);
        this.four = this._io.readBitsIntBe(14);
        KaitaiStream _io_byte3 = this._io.substream(3);
        this.byte3 = new Foo(_io_byte3, this, _root);
        this.fullByte = this._io.readBitsIntBe(8);
        this.byte4 = this._io.readU1();
        this.five = this._io.readBitsIntBe(22);
        this.bytesTerm = this._io.readBytesTerm((byte) 69, true, true, true);
        this.six = this._io.readBitsIntBe(8);
    }

    public void _fetchInstances() {
        this.byte3._fetchInstances();
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, BitsByteAligned _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, BitsByteAligned _parent, BitsByteAligned _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.inner = this._io.readBitsIntBe(19);
        }

        public void _fetchInstances() {
        }
        public long inner() { return inner; }
        public BitsByteAligned _root() { return _root; }
        public BitsByteAligned _parent() { return _parent; }
        private long inner;
        private BitsByteAligned _root;
        private BitsByteAligned _parent;
    }
    public long one() { return one; }
    public int byte1() { return byte1; }
    public long two() { return two; }
    public boolean three() { return three; }
    public byte[] byte2() { return byte2; }
    public long four() { return four; }
    public Foo byte3() { return byte3; }
    public long fullByte() { return fullByte; }
    public int byte4() { return byte4; }
    public long five() { return five; }
    public byte[] bytesTerm() { return bytesTerm; }
    public long six() { return six; }
    public BitsByteAligned _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private long one;
    private int byte1;
    private long two;
    private boolean three;
    private byte[] byte2;
    private long four;
    private Foo byte3;
    private long fullByte;
    private int byte4;
    private long five;
    private byte[] bytesTerm;
    private long six;
    private BitsByteAligned _root;
    private KaitaiStruct _parent;
}
