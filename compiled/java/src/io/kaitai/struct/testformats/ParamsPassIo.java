// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ParamsPassIo extends KaitaiStruct {
    public static ParamsPassIo fromFile(String fileName) throws IOException {
        return new ParamsPassIo(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassIo(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassIo(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassIo(KaitaiStream _io, KaitaiStruct _parent, ParamsPassIo _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_first = this._io.substream(1);
        this.first = new Block(_io_first, this, _root);
        this.one = new ParamType(this._io, this, _root, (first().foo() == 255 ? first()._io() : _root()._io()));
    }

    public void _fetchInstances() {
        this.first._fetchInstances();
        this.one._fetchInstances();
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ParamsPassIo _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassIo _parent, ParamsPassIo _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.foo = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        private int foo;
        private ParamsPassIo _root;
        private ParamsPassIo _parent;
        public int foo() { return foo; }
        public ParamsPassIo _root() { return _root; }
        public ParamsPassIo _parent() { return _parent; }
    }
    public static class ParamType extends KaitaiStruct {

        public ParamType(KaitaiStream _io, KaitaiStream argStream) {
            this(_io, null, null, argStream);
        }

        public ParamType(KaitaiStream _io, ParamsPassIo _parent, KaitaiStream argStream) {
            this(_io, _parent, null, argStream);
        }

        public ParamType(KaitaiStream _io, ParamsPassIo _parent, ParamsPassIo _root, KaitaiStream argStream) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.argStream = argStream;
            _read();
        }
        private void _read() {
            this.buf = this._io.readBytes(argStream().size());
        }

        public void _fetchInstances() {
        }
        private byte[] buf;
        private KaitaiStream argStream;
        private ParamsPassIo _root;
        private ParamsPassIo _parent;
        public byte[] buf() { return buf; }
        public KaitaiStream argStream() { return argStream; }
        public ParamsPassIo _root() { return _root; }
        public ParamsPassIo _parent() { return _parent; }
    }
    private Block first;
    private ParamType one;
    private ParamsPassIo _root;
    private KaitaiStruct _parent;
    public Block first() { return first; }
    public ParamType one() { return one; }
    public ParamsPassIo _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
