// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class ProcessRepeatUsertype extends KaitaiStruct {
    public static ProcessRepeatUsertype fromFile(String fileName) throws IOException {
        return new ProcessRepeatUsertype(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessRepeatUsertype(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatUsertype(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatUsertype(KaitaiStream _io, KaitaiStruct _parent, ProcessRepeatUsertype _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_blocks = new ArrayList<byte[]>(((Number) (2)).intValue());
        blocks = new ArrayList<Block>(((Number) (2)).intValue());
        for (int i = 0; i < 2; i++) {
            this._raw__raw_blocks.add(this._io.readBytes(5));
            this._raw_blocks = KaitaiStream.processXor(this._raw__raw_blocks, 158);
            KaitaiStream _io__raw_blocks = new ByteBufferKaitaiStream(_raw_blocks.get(_raw_blocks.size() - 1));
            this.blocks.add(new Block(_io__raw_blocks, this, _root));
        }
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ProcessRepeatUsertype _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ProcessRepeatUsertype _parent, ProcessRepeatUsertype _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.a = this._io.readS4le();
            this.b = this._io.readS1();
        }
        private int a;
        private byte b;
        private ProcessRepeatUsertype _root;
        private ProcessRepeatUsertype _parent;
        public int a() { return a; }
        public byte b() { return b; }
        public ProcessRepeatUsertype _root() { return _root; }
        public ProcessRepeatUsertype _parent() { return _parent; }
    }
    private ArrayList<Block> blocks;
    private ProcessRepeatUsertype _root;
    private KaitaiStruct _parent;
    private ArrayList<byte[]> _raw_blocks;
    private ArrayList<byte[]> _raw__raw_blocks;
    public ArrayList<Block> blocks() { return blocks; }
    public ProcessRepeatUsertype _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public ArrayList<byte[]> _raw_blocks() { return _raw_blocks; }
    public ArrayList<byte[]> _raw__raw_blocks() { return _raw__raw_blocks; }
}
