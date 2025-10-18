// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ParamsPassArrayIo extends KaitaiStruct {
    public static ParamsPassArrayIo fromFile(String fileName) throws IOException {
        return new ParamsPassArrayIo(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassArrayIo(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayIo(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayIo(KaitaiStream _io, KaitaiStruct _parent, ParamsPassArrayIo _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_first = this._io.substream(1);
        this.first = new Block(_io_first, this, _root);
        this.one = new ParamType(this._io, this, _root, new ArrayList<KaitaiStream>(Arrays.asList(first()._io(), _root()._io())));
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

        public Block(KaitaiStream _io, ParamsPassArrayIo _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassArrayIo _parent, ParamsPassArrayIo _root) {
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
        public int foo() { return foo; }
        public ParamsPassArrayIo _root() { return _root; }
        public ParamsPassArrayIo _parent() { return _parent; }
        private int foo;
        private ParamsPassArrayIo _root;
        private ParamsPassArrayIo _parent;
    }
    public static class ParamType extends KaitaiStruct {

        public ParamType(KaitaiStream _io, List<KaitaiStream> argStreams) {
            this(_io, null, null, argStreams);
        }

        public ParamType(KaitaiStream _io, ParamsPassArrayIo _parent, List<KaitaiStream> argStreams) {
            this(_io, _parent, null, argStreams);
        }

        public ParamType(KaitaiStream _io, ParamsPassArrayIo _parent, ParamsPassArrayIo _root, List<KaitaiStream> argStreams) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.argStreams = argStreams;
            _read();
        }
        private void _read() {
            this.buf = this._io.readBytes(argStreams().get(((int) 0)).size());
        }

        public void _fetchInstances() {
        }
        public byte[] buf() { return buf; }
        public List<KaitaiStream> argStreams() { return argStreams; }
        public ParamsPassArrayIo _root() { return _root; }
        public ParamsPassArrayIo _parent() { return _parent; }
        private byte[] buf;
        private List<KaitaiStream> argStreams;
        private ParamsPassArrayIo _root;
        private ParamsPassArrayIo _parent;
    }
    public Block first() { return first; }
    public ParamType one() { return one; }
    public ParamsPassArrayIo _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Block first;
    private ParamType one;
    private ParamsPassArrayIo _root;
    private KaitaiStruct _parent;
}
