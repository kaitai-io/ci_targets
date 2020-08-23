// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class ParamsPassArrayUsertype extends KaitaiStruct {
    public static ParamsPassArrayUsertype fromFile(String fileName) throws IOException {
        return new ParamsPassArrayUsertype(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassArrayUsertype(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayUsertype(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayUsertype(KaitaiStream _io, KaitaiStruct _parent, ParamsPassArrayUsertype _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        blocks = new ArrayList<Block>(((Number) (2)).intValue());
        for (int i = 0; i < 2; i++) {
            this.blocks.add(new Block(this._io, this, _root));
        }
        this.passBlocks = new ParamType(this._io, this, _root, blocks());
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ParamsPassArrayUsertype _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassArrayUsertype _parent, ParamsPassArrayUsertype _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.foo = this._io.readU1();
        }
        private int foo;
        private ParamsPassArrayUsertype _root;
        private ParamsPassArrayUsertype _parent;
        public int foo() { return foo; }
        public ParamsPassArrayUsertype _root() { return _root; }
        public ParamsPassArrayUsertype _parent() { return _parent; }
    }
    public static class ParamType extends KaitaiStruct {

        public ParamType(KaitaiStream _io, ArrayList<Block> bar) {
            this(_io, null, null, bar);
        }

        public ParamType(KaitaiStream _io, ParamsPassArrayUsertype _parent, ArrayList<Block> bar) {
            this(_io, _parent, null, bar);
        }

        public ParamType(KaitaiStream _io, ParamsPassArrayUsertype _parent, ParamsPassArrayUsertype _root, ArrayList<Block> bar) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.bar = bar;
            _read();
        }
        private void _read() {
            this.one = this._io.readBytes(bar().get((int) 0).foo());
            this.two = this._io.readBytes(bar().get((int) 1).foo());
        }
        private byte[] one;
        private byte[] two;
        private ArrayList<Block> bar;
        private ParamsPassArrayUsertype _root;
        private ParamsPassArrayUsertype _parent;
        public byte[] one() { return one; }
        public byte[] two() { return two; }
        public ArrayList<Block> bar() { return bar; }
        public ParamsPassArrayUsertype _root() { return _root; }
        public ParamsPassArrayUsertype _parent() { return _parent; }
    }
    private ArrayList<Block> blocks;
    private ParamType passBlocks;
    private ParamsPassArrayUsertype _root;
    private KaitaiStruct _parent;
    public ArrayList<Block> blocks() { return blocks; }
    public ParamType passBlocks() { return passBlocks; }
    public ParamsPassArrayUsertype _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
