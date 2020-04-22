// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ZlibSurrounded extends KaitaiStruct {
    public static ZlibSurrounded fromFile(String fileName) throws IOException {
        return new ZlibSurrounded(new ByteBufferKaitaiStream(fileName));
    }

    public ZlibSurrounded(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ZlibSurrounded(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ZlibSurrounded(KaitaiStream _io, KaitaiStruct _parent, ZlibSurrounded _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pre = this._io.readBytes(4);
        this._raw__raw_zlib = this._io.readBytes(12);
        this._raw_zlib = KaitaiStream.processZlib(_raw__raw_zlib);
        KaitaiStream _io__raw_zlib = new ByteBufferKaitaiStream(_raw_zlib);
        this.zlib = new Inflated(_io__raw_zlib, this, _root);
        this.post = this._io.readBytes(4);
    }
    public static class Inflated extends KaitaiStruct {
        public static Inflated fromFile(String fileName) throws IOException {
            return new Inflated(new ByteBufferKaitaiStream(fileName));
        }

        public Inflated(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Inflated(KaitaiStream _io, ZlibSurrounded _parent) {
            this(_io, _parent, null);
        }

        public Inflated(KaitaiStream _io, ZlibSurrounded _parent, ZlibSurrounded _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.num = this._io.readS4le();
        }
        private int num;
        private ZlibSurrounded _root;
        private ZlibSurrounded _parent;
        public int num() { return num; }
        public ZlibSurrounded _root() { return _root; }
        public ZlibSurrounded _parent() { return _parent; }
    }
    private byte[] pre;
    private Inflated zlib;
    private byte[] post;
    private ZlibSurrounded _root;
    private KaitaiStruct _parent;
    private byte[] _raw_zlib;
    private byte[] _raw__raw_zlib;
    public byte[] pre() { return pre; }
    public Inflated zlib() { return zlib; }
    public byte[] post() { return post; }
    public ZlibSurrounded _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_zlib() { return _raw_zlib; }
    public byte[] _raw__raw_zlib() { return _raw__raw_zlib; }
}
